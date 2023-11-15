# -*- coding: utf-8 -*-

import subprocess
from time import sleep

from tqdm import tqdm
import os, sys
import Setting
import pickle
import common
import extractCoverInfo

dev = Setting.dev["multiThread"]
"""
$ gcc -fprofile-arcs -ftest-coverage test.c -o test
zhangzhanwen@cise-Super-Server:~$ ./test < in.in 
(-2.010,102.010)
$ gcov test.c -o ~/
zhangzhanwen@cise-Super-Server:~$ vi test.c.gcov 
"""


# Wa是一个list，里面是str，是每个wa文件的路径
# 开始编译Wa，之后对于每个test，生成覆盖信息，
# 当前进程所在的目录为  数据集/problem/bug代码文件夹/

def jugeResult(output, outFile):
    with open(outFile, 'r') as AC:
        ACout = AC.read()
    # print(output)
    ACout = ACout.strip(' ')
    ACout = ACout.strip('\n')
    ACout = ACout.strip()
    output = output.decode('utf-8')
    output = output.strip()
    output = output.strip(' ')
    output = output.strip('\n')
    if not ACout == output:
        print(ACout, 'end\n\n', output, 'end\n\n\n', ACout == output, "   \n", outFile, "  \n", outFile, type(output),
              '\n______________________\n')
    if ACout == (output):
        return 1
    return 0


def getCoverInfo(problem,programList, item, cata):
    for program in programList:  # program {"cata":os.path.join(pathOfSingleProblemData,itemDetial,itemAc),"name":itemAc}
        programName = program["name"].split(".")[0]
        languageType = "g++"  # if ".cpp" in program["name"] else "gcc"
        # subprocess.Popen("pwd",shell=True).wait()
        compileFileName = common.jointPath(["..", program["cata2"], program["name"]])
        # print(compileFileName,"  compileFileName")
        if not os.path.exists(Setting.gcovDirName):
            os.mkdir(Setting.gcovDirName)
        if Setting.cumulativeCoverTimes:  # 如果要累计覆盖次数那么就在这里编译一次即可
            ss = subprocess.Popen(
                languageType + " -fprofile-arcs -ftest-coverage " + compileFileName + " -o " + programName, shell=True,
                cwd=Setting.gcovDirName)
            ss.wait()
        # print(programName)
        # 编译可生成覆盖信息的可执行文件，在Setting的指定目录里

        for index, In in enumerate(item[Setting.IN]):
            # 编译文件
            if not Setting.cumulativeCoverTimes:  # 不累加覆盖次数 ，对于每个测试用例，都需要重新编译一次
                ss = subprocess.Popen(
                    languageType + " -fprofile-arcs -ftest-coverage " + compileFileName + "  -lm -o " + programName,
                    shell=True, cwd=Setting.gcovDirName)
                ss.wait()
            # 将测试数据输入到程序中
            p = subprocess.Popen('./' + programName + " < " + common.jointPath(["../", Setting.TEST, In]), shell=True,
                                 cwd=Setting.gcovDirName, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            p.wait()
            output, err = p.communicate()
            # 判断输出是否正确
            # print(output,programName,err )
            result = jugeResult(output, common.jointPath(["./", Setting.TEST, In[: -2] + "out"]))

            # 生成gcov文件
            subprocess.Popen("gcov  " + programName, shell=True, cwd=Setting.gcovDirName).wait()
            # 将生成的报告挪到应有的地方
            gcovFileName = program["name"] + ".gcov"
            if Setting.saveCoverInfo:  # 如果选择保留文件，则将其文件名后面加个1，不保存的话，就会直接覆盖掉原来的文件
                gcovFileName += str(index + 1)
                subprocess.Popen("mv " + program["name"] + ".gcov  " + program["name"] + ".gcov" + str(index + 1),
                                 shell=True, cwd=Setting.gcovDirName).wait()
            extractCoverInfo.start(problem=problem, problemName= item['code'], gcovFileName=gcovFileName, codeFileName=program["name"], result=result, inName=In, sourcePath=compileFileName,
                                   cwd=Setting.gcovDirName, errLines= program['errorLineList'])

            # sleep(2)
            # if Setting.dev["Main"]:
            #     break
        # if Setting.dev["Main"]:
        #     break


if __name__ == "__main__":
    subprocess.Popen("pwd ", shell=True).wait()
    subprocess.Popen("ls ", shell=True).wait()
    print(Setting.problemInfoFileName)

    with open(Setting.problemInfoFileName, 'rb') as f:
        item = pickle.load(f)
        # 创建根据problem，创建对应的文件夹
        # if not os.path.exists(common.jointPath([item["pwd"],Setting.resultDir,item[Setting.problemCode]])):
        #     os.mkdir(common.jointPath([item["pwd"],Setting.resultDir,item[Setting.problemCode]]))
        cata = ""
        problem = {
            'pwd': common.pwd(),
            'id': item['code'],
            'fileList': [],
            "inList": [],
            'fileId': [],
            'lineTypeList': ['other']
        }
        if Setting.getWaInfo:
            getCoverInfo(problem,item[Setting.WA], item, common.jointPath([item[Setting.problemDirName], Setting.gcovDirName]))

        if Setting.getAcInfo:
            getCoverInfo(problem,item[Setting.AC], item, common.jointPath([item[Setting.problemDirName], Setting.gcovDirName]))

    with open(common.jointPath(['../', '../', Setting.resultDir, item['code'] + '.pkl']), "wb") as f:
        pickle.dump(problem, f)

