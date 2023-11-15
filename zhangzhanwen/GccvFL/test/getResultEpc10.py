import json
import os
import pickle
import subprocess
import sys

import common
import batchRunFileSetting
from pyecharts import options as opts
from pyecharts.charts import Line
from tqdm import tqdm

# 导入必要的库

# 这个程序是个脚本，用来批量处理Grace的运行结果的，要在项目的根目录处执行

# 所有故障定位方法结果的集合
programFL = {}
questionList = []


# init函数中要用到的，这个是读取question下tag所有的信息 用字典存起来
def errorLineNumber(path='', tag={}):
    fileList = common.dirList(path)
    for i, item in enumerate(fileList):
        if len(item) == 0:
            return
        with open(common.jointPath([path, item]), 'r') as f:
            lines = f.readlines()
        tag[lines[0].rstrip('\n')] = [int(x) - 1 for x in lines[2].rstrip('\n').split(',')]
    return


# 初始化函数，主要是为了收集数据集中的错误行信息，有个问题需要注意一下，定位到的错误行和数据集中的错误行是否是对应的
def init():
    quesList = common.dirList(batchRunFileSetting.dataDir)
    mydataset = ["2812","2825","2830","2866","1927","2864"]
    # programFL = {}
    for ques in quesList:  # 对于每个question
        if ques not in mydataset:
            continue
        quesPath = common.jointPath([batchRunFileSetting.dataDir, ques, 'Tag_c'])

        questionList.append(ques)
        errorLineNumber(quesPath, programFL)

# 以每个代码文件为单位，收集top指标和EXAM
def forProgram(topInfo, errLine, sumLineNumber):
    #     # print(topInfo,errLine,"sumLineNumber = ",sumLineNumber)
    topN10 = [0 for i in range(13)]
    ansTopn = 0
    EXAM = 0
    EXAMArr = []

    for index, topn in enumerate(topInfo):  # 对于怀疑排序，进行预处理前缀和
        topnLen = len(topn)
        ansTopn += topnLen  # 采用最差topn，计算个数

        # if ansTopn > 10:  # 只统计top前十
        #     break

        for index, topLine in enumerate(topn):  # 对于当前top的行号，如果是错误行，就定位了topIndex中
            if topLine in errLine:
                #                 # print(ansTopn)
                if ansTopn <= 10:
                    topN10[ansTopn] += 1
                EXAM += ansTopn / sumLineNumber  # 计算EXAM，稍后会除以总数，取平均
                EXAMArr.append(ansTopn / sumLineNumber)
    for i in range(1, 13):
        topN10[i] += topN10[i - 1]  # 计算topN个数
    return topN10, topN10[1], topN10[3], topN10[5], topN10[10], EXAM, EXAMArr


# 以question为单位，收集top指标、EXAM等信息，需要用到forProgram函数，
def forQuestion(sheet, question):
    # 保留原始信息，文件名、怀疑排名、怀疑都
    #     # print(sheet)
    # for i,row in enumerate(sheet.rows):
    #     for j,data in enumerate(row):
    # #         print(i,j,data.value,end="  ")
    # #     print()
    # print(sheet,type(question))
    programNameList = sheet['name']

    topKNList = sheet['suspicion_rank']
    suspicionList = sheet['suspicion']
    question['programNameList'] = programNameList

    question['suspicionList'] = suspicionList  # 这好像是个二维数组 【程序名】【怀疑分数】
    question['topNList'] = topKNList  # 这个好像是三维数组【程序】【topn数组】【行号】
    #     # print("question = ",question)

    sumTopArr = [0 for i in range(13)]
    # question["EXAMARR"]
    top1 = []
    top3 = []
    top5 = []
    top10 = []
    EXAM = []
    sumTop1 = 0
    sumTop3 = 0
    sumTop5 = 0
    sumTop10 = 0
    sumEXAM = 0
    errLineNum = 0
    sumEXAM = 0
    FileEXAM = []
    #     # print(programNameList)
    for index, programName in enumerate(programNameList):
        if '1741137' in programName:
            continue
        if '270283' in programName:
            continue
        # question['topKN'] = [0 for i in range(12)]
        #         # print(type(question),type(programName),programName)
        question[programName] = {}
        question[programName]['trueAns'] = programFL[programName]

        question[programName]['suspicionRank'] = topKNList[index]
        question[programName]['1'] = {}
        question[programName]['3'] = {}
        question[programName]['5'] = {}
        question[programName]['10'] = {}
        question[programName]['EXAM'] = {}
        #         # print(suspicionList[index],len(suspicionList[index]))
        question[programName]['topNList'], question[programName]['1'], question[programName]['3'], \
            question[programName]['5'], question[programName]['10'], question[programName][
            'EXAM'], question[programName][
            'EXAMArr'] = forProgram(topKNList[index], programFL[programName], len(suspicionList[index]))
        # question[programName]['PassingRate'] =
        # 统计question下的所有指标
        top1.append(question[programName]['1'])  # 收集所有 top1
        top3.append(question[programName]['3'])
        top5.append(question[programName]['5'])
        top10.append(question[programName]['10'])
        EXAM.extend(question[programName]['EXAMArr'])
        sumTop1 += question[programName]['1']
        sumTop3 += question[programName]['3']
        sumTop5 += question[programName]['5']
        sumTop10 += question[programName]['10']
        sumEXAM += question[programName]['EXAM']
        if 0 == len(question[programName]['EXAMArr']):
            FileEXAM.append(1)
        else:
            FileEXAM.append(question[programName]['EXAM'] / len(question[programName]['EXAMArr']))
        errLineNum += len(programFL[programName])
        #         # print('(question[programName][topKNList] = ',(question[programName]['topNList']))
        #         # print('sumTopArr = ',sumTopArr)
        for i in range(len(question[programName]['topNList'])):
            sumTopArr[i] += question[programName]['topNList'][i]
        # sumEXAM += question[programName]['EXAM']
        # question['sumTop']
    question['top1'] = top1
    question['top3'] = top3
    question['top5'] = top5
    question['top10'] = top10
    question['sumTop1'] = sumTop1
    question['sumTop3'] = sumTop3
    question['sumTop5'] = sumTop5
    question['sumTop10'] = sumTop10
    question['sumEXAM'] = sumEXAM
    question['FileEXAM'] = FileEXAM
    question['EXAM'] = EXAM
    question['errLineNum'] = errLineNum


# 用于生成可视化数据，也就是echarts画个折线图
def drawLine(end, name="折线统计图", xName="", xLine=[1, 2, 3]):
    line_chart = Line(init_opts=opts.InitOpts(width="100%"))

    # 添加数据
    line_chart.add_xaxis(xaxis_data=xLine)
    line_chart.add_yaxis(series_name="top1", y_axis=end['top1'])
    line_chart.add_yaxis(series_name="top3", y_axis=end['top3'])
    line_chart.add_yaxis(series_name="top5", y_axis=end['top5'])
    line_chart.add_yaxis(series_name="top10", y_axis=end['top10'])
    # line_chart2 = Line()
    # line_chart2.add_xaxis(xaxis_data=end['amount']['questName'])
    # line_chart.add_yaxis(series_name="EXAM", y_axis=end['amount']['EXAM'])

    # 设置全局配置
    line_chart.set_global_opts(
        title_opts=opts.TitleOpts(title=name),
        xaxis_opts=opts.AxisOpts(name="xName"),
        yaxis_opts=opts.AxisOpts(name="topN"),
        tooltip_opts=opts.TooltipOpts(trigger="axis"),
    )

    # 渲染图表并保存到文件
    line_chart.render(name + "line_chart.html")


def forBaseLine(myxlsx, baseLine, baseLineName):
    sumTopArr = []
    top1 = [0 for i in range(len(questionList))]
    top3 = [0 for i in range(len(questionList))]
    top5 = [0 for i in range(len(questionList))]
    top10 = [0 for i in range(len(questionList))]
    EXAM = []
    sumTop1 = 0
    sumTop3 = 0
    sumTop5 = 0
    sumTop10 = 0
    errLineNum = 0
    sumEXAM = 0
    baseLine["questName"] = []
    FileEXAM = []
    # 🤔 我们需要整合一下，对于每个方法，我们用一个数组，来存储top1，3，5，10，exam。我们用一个变量sumtop1，3，5，10，sumExam

    for i, question in enumerate(questionList):  # myxlsx中，有若干个question，开始收集每个questtion的信息
        # print()
        baseLine["questName"].append(question)
        baseLine[question] = {}
        #         # print("test",question,myxlsx)
        #         # print(type(baseLine[question]))
        forQuestion(myxlsx[question], baseLine[question])
        top1[i] += baseLine[question]['sumTop1']
        top3[i] += baseLine[question]['sumTop3']
        top5[i] += baseLine[question]['sumTop5']
        top10[i] += baseLine[question]['sumTop10']
        sumTop1 += baseLine[question]['sumTop1']
        sumTop3 += baseLine[question]['sumTop3']
        sumTop5 += baseLine[question]['sumTop5']
        sumTop10 += baseLine[question]['sumTop10']
        errLineNum += baseLine[question]['errLineNum']
        sumEXAM += baseLine[question]['sumEXAM']
        EXAM.append(baseLine[question]['sumEXAM'])
        FileEXAM.extend(baseLine[question]['FileEXAM'])

    baseLine['top1'] = top1
    baseLine['top3'] = top3
    baseLine['top5'] = top5
    baseLine['top10'] = top10
    baseLine['sumTop1'] = sumTop1
    baseLine['sumTop3'] = sumTop3
    baseLine['sumTop5'] = sumTop5
    baseLine['sumTop10'] = sumTop10
    baseLine['sumEXAM'] = sumEXAM
    baseLine['EXAM'] = EXAM
    baseLine['errLineNum'] = errLineNum
    baseLine['FileEXAM'] = FileEXAM
    #     # print('drawLine', baseLine)
    drawLine(baseLine, baseLineName, "baseLine", questionList)


def toDictionary():
    fileList = common.dirList(batchRunFileSetting.resultDir)
    #     # print(fileList)
    getResultEpc10 = {}
    for i, item in enumerate(fileList):  # 遍历每个Grace文件夹
        filePath = common.jointPath([batchRunFileSetting.resultDir, item])
        # ans = pickle.load(open(common.jointPath([batchRunFileSetting.preFileDir, item + ".pkl"]), 'rb'))
        #         # print(common.jointPath([batchRunFileSetting.preFileDir, item[5:] + ".pkl"]))
        ans = pickle.load(open(common.jointPath([batchRunFileSetting.preFileDir, item[5:] + ".pkl"]), 'rb'))

        files = common.dirList(filePath)  # 获取Grace文件夹下面的所有的
        #         # print(files)
        item2 = item[5:]
        getResultEpc10[item2] = {}
        getResultEpc10[item2]['suspicion_rank'] = []
        getResultEpc10[item2]['suspicion'] = []

        getResultEpc10[item2]['name'] = []
        for j in range(800):
            #             # print(item + "res" + str(j) + '_0_0.01_60.pkl' in files, item + "res" + str(j) + '_0_0.01_60.pkl')
            if item + "res" + str(j) + '_0_0.01_60.pkl' in files:
                file = common.jointPath([filePath, item + "res" + str(j) + '_0_0.01_60.pkl'])
                graceRes = pickle.load(open(file, 'rb'))[j][3][10]
                theAns = ans['fileList'][j]['errLines']  # 错误行列表
                # lineName = j #ans['fileId'][j]
                #                 # print("graceRes = ",graceRes)
                getResultEpc10[item2]['suspicion_rank'].append([[item] for item in graceRes])
                getResultEpc10[item2]['suspicion'].append([-1 for i in range(len(graceRes))])

                getResultEpc10[item2]['name'].append(ans["fileId"][j])
                # tempans = [0 for i in range(len(graceRes) + 3)]  # 统计topn， tempans [ i ]  表示topi
                # tempExam = 0  # 表示分数
                # sumRank = 0  # 用于总计每个错误语句的exam
                # for x in theAns:
                #     tempans[graceRes.index(x)] += 1
                #     getResultEpc10[item]["EXAM"].append( graceRes.index(x)/len(graceRes) )
                #     tempExam += graceRes.index(x)  # 第x行的错误语句的排行
                #     # sumRank +=graceRes.index(x)
                # # 求topn的和
                # for x in range(1, len(tempans)):
                #     tempans[x] += tempans[x - 1]
                # getResultEpc10[item][lineName]['trueAns'] = theAns
                # getResultEpc10[item][lineName]['top'] = tempans
                # getResultEpc10[item][lineName]['sumEXAM'] = tempExam / (len(graceRes)  )
                # getResultEpc10[item][lineName]['sumRank'] = tempExam / (len(graceRes))
            else:
                break
        # return 1
    return getResultEpc10


def dealEnd(resEpc10):
    # 这一层要用来总结指标
    top1 = []
    top3 = []
    top5 = []
    top10 = []
    EXAM = []
    sumTop1 = 0
    sumTop3 = 0
    sumTop5 = 0
    sumTop10 = 0
    questName = []
    sumEXAM = 0.0
    ansNum = 0
    for quest in resEpc10:
        questName.append(quest)
        topAnsLen = 0
        #         # print(resEpc10[quest])
        for resIndex in resEpc10[quest]:
            if "c" not in resIndex:  # 索引为-1表示里面是一些统计指标而不是版本
                continue
            #             # print("resIndex = ",resIndex)
            if topAnsLen < len(resEpc10[quest][resIndex]['top']):  # 找到最长的那个来统计top指标，防止溢出
                topAnsLen = len(resEpc10[quest][resIndex]['top'])
        topN = [0 for i in range((topAnsLen) + 3)]
        Exam = 0.0  # 当前问题下的所有的Exam求和，为总Exam做铺垫

        AnsNum = 0  # 当前quest下错误行总数
        for resIndex in resEpc10[quest]:  # 对于每个问题下的每个版本
            if "c" not in resIndex:  # 索引为-1表示里面是一些统计指标而不是版本
                continue
            for i, val in enumerate(resEpc10[quest][resIndex]['top']):  # 对于每个版本下的top，进行累计
                topN[i] += val  # topN i  表示topi 的指标  用于统计当前quest下的所有top指标

            Exam += resEpc10[quest][resIndex]['sumEXAM']
            AnsNum += len(resEpc10[quest][resIndex]['trueAns'])

        sumEXAM += Exam
        resEpc10[quest]['top'] = topN
        resEpc10[quest]["EXAM"] = Exam / (AnsNum)  # 错误语句的总分数 / 总的错误语句数量
        # resEpc10[quest][]
        resEpc10[quest]['ansNum'] = AnsNum  # 总错误语句数量
        top1.append(topN[0])
        top3.append(topN[2])
        top5.append(topN[4])
        top10.append(topN[9])
        EXAM.append(Exam / AnsNum)
        sumTop1 += topN[0]
        sumTop3 += topN[2]
        sumTop5 += topN[4]
        sumTop10 += topN[9]
        ansNum += AnsNum

        # resEpc10['amount'] = {
    resEpc10["top1"] = top1
    resEpc10["top3"] = top3
    resEpc10["top5"] = top5
    resEpc10["top10"] = top10
    resEpc10["EXAM"] = EXAM
    resEpc10["sumTop1"] = sumTop1
    resEpc10["sumTop3"] = sumTop3
    resEpc10["sumTop5"] = sumTop5
    resEpc10["sumTop10"] = sumTop10
    resEpc10["questName"] = questName
    resEpc10["sumEXAM"] = sumEXAM / ansNum
    resEpc10["errLineNum"] = ansNum
    # }
    #     # print(ansNum)
    return resEpc10


if __name__ == "__main__":
    print("开始整理信息")
    init()
    end = toDictionary()
    result = {}
    forBaseLine(end, result, batchRunFileSetting.resultDir)
    end = result
    #     # print(len(end))

    #     # print("result =",result)
    with open(batchRunFileSetting.resultJsonFileName, 'w') as f:
        json.dump(result, f)
    print("整理完成，生成文件", batchRunFileSetting.resultJsonFileName)
#     print("开始为整理的信息生成top图")
#     p = subprocess.Popen("python " + " test/draw.py file " + batchRunFileSetting.resultJsonFileName,
#                          shell=True)
#     p.wait()
#
# #     # print("mv "  +batchRunFileSetting.resultJsonFileName +".html  "+ common.jointPath([batchRunFileSetting.baseLineDir] ))
#
#     p = subprocess.Popen("mv "  +batchRunFileSetting.resultJsonFileName.split('.')[0]+".html  "+ common.jointPath([batchRunFileSetting.baseLineDir] ),
#                          shell=True)
#     p.wait()
#
#     p = subprocess.Popen("mv " + batchRunFileSetting.resultJsonFileName.split('.')[0] + ".json  " + common.jointPath(
#         [batchRunFileSetting.baseLineDir]),
#                          shell=True)
#     p.wait()
#     print("生成echarts完成，已转移到,",batchRunFileSetting.baseLineDir,",文件夹中,", "，开始生成topn图谱")
#     p = subprocess.Popen("python " + " test/draw.py dir " + batchRunFileSetting.baseLineDir,
#                          shell=True)
#     p.wait()
#
#     p = subprocess.Popen(
#         "mv " + "topN.html"+ "  " + batchRunFileSetting.baseLineDir ,
#         shell=True)
# result
