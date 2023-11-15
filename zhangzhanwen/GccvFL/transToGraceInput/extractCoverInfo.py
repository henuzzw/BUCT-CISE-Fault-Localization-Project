# -*- coding: utf-8 -*-

# 此文件在gcov命令生成覆盖信息后被调用，是用于存储覆盖信息的
import pickle
import re
import subprocess
from tqdm import tqdm
import os, sys
import Setting
import common
from pycparser import c_parser, c_ast


# 当前目录夹应该是在项目文件夹下
dev = Setting.dev["extractCoverInfo"]


def getFunInProblem(fileList,file):
    for f in fileList:
        if f['id'] == file:
            return True
    with open(" ", "rb") as f:
        problem = pickle.load(f)
    return False
def getinProblem(fileList,file):
    for i,f in enumerate(fileList):
        if f == file:
            return i
    fileList.append(file)

    return len(fileList)-1
def getProblemFile(problem,problemName,pwd,fileName,inName,result,gcovFileName,sourcePath,cwd,errLines=[]):
    inListId = getinProblem(problem['inList'],inName) # 设置输入文件的Id
    lenFile = len(problem['fileId'])                  # 获取目前的代码文件数量
    fileId = getinProblem(problem['fileId'],fileName) # 设置代码文件的Id
    filelistLen = ...
    file = ...
    code = []
    maxi = []
    gcovInfo,functions,maxi,tempLineTypeList = get_functions(maxi, code, common.jointPath([Setting.gcovDirName, gcovFileName]),cwd+"/"+sourcePath )

    cfg = ControlFlowGraph()
    for types in tempLineTypeList:
        if types not in  problem['lineTypeList']:
            problem['lineTypeList'].append(types)

    # print(len(maxi), len(gcovInfo) ," ---56")
    if lenFile != len(problem['fileId']):  # 如果当前文件还没有存储在pkl文件里
        # 分解函数
        functionList = []
        # 预处理function单元，也就是file的funcList
        parser = c_parser.CParser()
        for i,(funName,fun,fun_start,fun_end) in enumerate(functions):  # 对于每个函数
            (temp1,temp2,funname) = funName
            func={
                'pwd': common.jointPath([pwd,fileName]),
                'id': i,
                'startLine': fun_start,
                'endLine': fun_end,
                'name': funname,
            }
            # # 对于每个函数，开始对每个函数内语句类型进行判断
            # for j in range(fun_start,fun_end):
            #     methods = code[j]['code']+'\n'
            functionList.append(func)
        # print(cwd+"/"+sourcePath, functionList)
        problem['fileList'].append({
            'id': fileId,
            "pwd": common.jointPath([pwd,fileName]),
            'result':[],
            'errLines': errLines,
            'lineId':code,
            'maxi':maxi,
            'funList':functionList,
            'codeList':code,
            "cfg":  cfg.getCppCFG(cwd+"/"+sourcePath, functionList)
        })

    filelistLen = len(problem['fileList'])
    # print(maxi,"-----89")

    # 将测试的结果放到res中
    file = problem['fileList'][filelistLen - 1]
    file['result'].append(result)
    # print(len(file['maxi']),len(maxi), len(gcovInfo)," ------ len")
    for i,line in enumerate(file['maxi']):
        # print(i,"-",line,"-",gcovInfo[i])
        if '#' in gcovInfo[i]:
            line.append(0)
        elif '-' in gcovInfo[i]:
            line.append(0)
        else:
            line.append(1)
    # print(problem)

    # 在列表末尾添加一个字符串
    # print(problem)
    # 将数据写入文件


# 获取函数体和函数列表
import getCppASTByLibClang3
from CFG.getCppCFG import ControlFlowGraph


def get_functions(maxi,code,filename,sourcePath ):
    with open(filename, 'r') as f:
        content = f.read()
    cfg = ControlFlowGraph()
    theAST,tempLineTypes = getCppASTByLibClang3.getCppASTByLibClang(sourcePath )

    pattern = r'/\*.*?\*/'
    content = re.sub(pattern, '', content, flags=re.DOTALL)
    LineInfo = content.split('\n')
    lines=[]
    gcovInfo=[]
    maxi = []
    # print(theAST)
    for i,line in enumerate(LineInfo):
        # if "0:" in line:
        #     continue
        # print(line)
        if not line.strip() or line.strip().startswith('//'):
            continue
        tempLine = line.split(':')
        # print(tempLine,'tempLine')
        tempLine[1] = int(tempLine[1])-1
        if tempLine[1] not in theAST:
            theAST[tempLine[1]] = {
                "parent": 0,
                "type": ['other'],
                "children": [],
            }
        theAST[tempLine[1]]['type'] = list(dict.fromkeys(theAST[tempLine[1]]['type']))
        if int(tempLine[1]) == -1:
            continue
        maxi.append([])
        gcovInfo.append(tempLine[0])
        # print(line, "-------tempLine")
        code.append({
            **theAST[tempLine[1]],
            'id': tempLine[1],
            'code': tempLine[2].rstrip('\n'),
            # 'type':  theAST[tempLine[1]],
            'lineNum': tempLine[1]
        })
        lines.append((tempLine[0],tempLine[1],tempLine[2].rstrip('\n')))
    # covTimes
    functions = []
    func_start = None
    funcNamelist =[]
    braces = 0

    # 用于搞定C语言中，函数相关的信息，比如实体行号范围
    for i, (covTimes,lineNum,line) in enumerate(lines):
        # print(i,covTimes,lineNum,line)
        # Skip empty or comment lines
        if not line.strip() or line.strip().startswith('//'):
            continue
        # Check for function start
        if not func_start and re.match(r'\w+\s+\w+\s*\([^)]*\)\s*' , line) and ';' not in line:
            func_start = i
            code[i]['type'] = theAST[i]['type']
            # funcNamelist.append(line.split('(')[0]+'(')
            braces += line.count('{') - line.count('}')
            continue
        # Check for function end
        if func_start is not None:
            braces += line.count('{') - line.count('}')
            # 用于搞定每行行号的语句类型
            if lineNum in theAST:
                code[i]['type'] = theAST[lineNum]['type']  # getLineType(line)
            else:
                code[i]['type'] = []
            if braces == 0 :
                functions.append((lines[func_start],lines[func_start:i+1], func_start+1, i+1))
                func_start = None

    # print(funcNamelist,'---------')
    #  返回覆盖信息，和函数信息
    # print(len(maxi), len(gcovInfo),"-----182")
    # print(tempLineTypes,"--------")
    return gcovInfo,functions,maxi,tempLineTypes
def start(problem,problemName,gcovFileName,codeFileName,result, inName,sourcePath,cwd,errLines=[]):
    pwd = common.pwd()
    # print("extractCoverInfo . pwd",pwd,problemName,gcovFileName,codeFileName,result, inName,)
    getProblemFile(problem=problem,problemName=problemName,pwd=pwd,fileName=codeFileName,inName=inName,result=result,gcovFileName=gcovFileName,sourcePath=sourcePath,cwd=cwd,errLines=errLines)
    # problem['lineTypeList'].extend( allLineType)
    # allLineType = list(dict.fromkeys(allLineType))

    """  
    当前目录位于项目文件夹下，已读取所生成的覆盖信息，接下来开始创建对应代码的.pkl文件，如果已经存在则不创建
    接下来开始对覆盖信息进行处理
    一. 本任务的需求： 
        1. 提取函数和函数内的语句，将函数名与函数体的每行语句作为节点，每个函数名与函数内语句都有一条边，同时每条函数体语句与对应的测试用例也有一条边
            a. 识别函数名
            b. 识别出函数体
            c. 结合上面两条信息
    二. 具体步骤
        1. 构造合适的数据结构
        2. 设计合适的算法提取函数名及其函数体
        3. 设计合适的算法提取对应语句的执行次数
    三. 保存
        1. 读取曾经的pkl文件，若没有，则创建新的
            pkl内应该是一个list，元素为
        2. 
    """




