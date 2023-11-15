# -*- coding: utf-8 -*-

import subprocess
from tqdm import tqdm
import os, sys
import Setting
import common
dev = Setting.dev["init"]  # 是否输出调试信息
ecode='utf-8' # 以utf-8的形式接收子程序控制台信息
# 错误行号

def errorLineNumber(path='',tag={}):
    fileList =  os.listdir(path)
    print(fileList)

    for i,item in enumerate(fileList):
        if len(item) == 0:
            return
        with open( common.jointPath([path,item]), 'r') as f:
            lines = f.readlines()
        tag[lines[0].rstrip('\n')] = [int(x)-1 for x in lines[2].rstrip('\n').split(',')]
        print(tag)
    return
            # print('\n')
"""分离输入输出文件"""

def DispartTestIO(pathOfSingleProblemData,path):
    if dev:
        print (path)
    problemIO = os.listdir(os.path.join(pathOfSingleProblemData, Setting.TEST))
    # print (problemIO)
    problemIn=[]
    problemOut=[]
    for fileName in problemIO:
        if Setting.IN in fileName:
            problemIn.append(os.path.join(fileName ))
        elif Setting.OUT in fileName:
            problemOut.append(os.path.join(fileName ))
    if dev:
        print (problemIn)
    return problemIn,problemOut

def init(path=""):
    if not os.path.exists(Setting.resultDir):
        os.mkdir(Setting.resultDir)
    print("数据目录为：", path)
    # print("对于每条数据下的目录应包含AC CRes_c TEST DATA TCG1 Tag_cWA C")
    print("开始获取数据目录")
    problemPathList = os.listdir(path) # 一系列problem的文件名list
    # problemPathList = ["1927", "2812", "2825", "2830", "2866", "2864"]
    # for problem in problemPathList:
    #     if not os.path.exists(common.jointPath([Setting.resultDir,problem])):
    #         os.mkdir(common.jointPath([Setting.resultDir,problem]))
    if dev:
        print (type(problemPathList),len(problemPathList))
    dataPath = os.path.join(path)
    problemList = []
    print ("共",(int(len(problemPathList)-1)),"条数据")
    # print (fileList, "\n", type(fileList))
    for item in (problemPathList):
        waFileList = []
        acFileList = []
        tag = {}
        if dev:
            print (len(item))
        if len(item) == 0:
            continue
        pathOfSingleProblemData = os.path.join(dataPath,item) # ITSP-data/2810/
        problemDatail = os.listdir(pathOfSingleProblemData)
        # 获取输入输出文件
        """IO文件列表"""
        inFileList,outFileList = DispartTestIO(pathOfSingleProblemData, os.path.join(pathOfSingleProblemData,Setting.TEST))
        acDirName=""
        waDirName=""
        for itemDetial in (problemDatail):   # itemDetial = TESTDATA ,
            """获取错误行"""
            if 'Tag' in itemDetial:
                errorLineNumber(os.path.join(pathOfSingleProblemData,itemDetial),tag)
            """ac文件列表"""
            if Setting.AC in itemDetial:
                getAcList = os.listdir(os.path.join(pathOfSingleProblemData,itemDetial))
                for itemAc in (getAcList):
                    if len(itemAc) == 0:
                        continue
                    acFileList.append({"cata":os.path.join(pathOfSingleProblemData,itemDetial,itemAc),"cata2": itemDetial,"name":itemAc,"errorLineList":[]})
            """wa文件列表"""
            if Setting.WA in itemDetial:
                getWaList = os.listdir(os.path.join(pathOfSingleProblemData, itemDetial))
                for itemWa in (getWaList):
                    if len(itemWa) == 0:
                        continue
                    waFileList.append({"cata":os.path.join(pathOfSingleProblemData, itemDetial, itemWa),"cata2": itemDetial,"name":itemWa,"errorLineList":tag[itemWa]})
        problem = {}
        problem[Setting.IN] = inFileList
        problem[Setting.OUT] = outFileList
        problem[Setting.AC] = acFileList
        problem[Setting.WA] = waFileList
        problem[Setting.problemDirName] = pathOfSingleProblemData
        problem[Setting.problemCode] = item
        problem['pwd'] = common.pwd()
        problem['test'] = 1
        problemList.append(problem)
    if dev:
        print ("文件列表")
        for items  in problemList:
            for key,value in items.items():
                print(key,": ",value)
    return problemList