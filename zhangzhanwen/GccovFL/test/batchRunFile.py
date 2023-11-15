import os
import subprocess
import common
import batchRunFileSetting
from tqdm import tqdm

# 这个程序是个脚本，用来批量运行Grace，要在项目的根目录处执行
if __name__ == "__main__":
    fileList = ["1927.pkl", "2812.pkl", "2825.pkl", "2830.pkl", "2866.pkl", "2864.pkl", "Grace1927.pkl",
                "Grace2812.pkl", "Grace2825.pkl", "Grace2830.pkl", "Grace2866.pkl",
                "Grace2864.pkl"]  # common.dirList(batchRunFileSetting.preFileDir)
    # print(fileList)
    FileToGraceList = {}

    # 匹配文件，例如grace1335.pkl  匹配到1335.pkl上
    for i, item in enumerate(fileList):
        if len(item) == 8:

            for j, itemG in enumerate(fileList):
                if item in itemG:
                    FileToGraceList[item] = itemG
    p = subprocess.Popen("mkdir  " + batchRunFileSetting.resultDir, shell=True)
    print(FileToGraceList)
    for key in (FileToGraceList):
        val = FileToGraceList[key]
        print(key, val, common.pwd())
        p = subprocess.Popen(
            "cp " + common.jointPath([batchRunFileSetting.preFileDir, val]) + " " + common.jointPath([val]), shell=True)
        p.wait()
        p = subprocess.Popen("python runtotal.py " + val[:-4], shell=True)
        p.wait()
        p = subprocess.Popen("mkdir " + batchRunFileSetting.resultDir + "/" + val[:-4], shell=True)
        p.wait()
        p = subprocess.Popen("mv " + val[:-4] + "* " + common.jointPath([batchRunFileSetting.resultDir, val[:-4]]),
                             shell=True)
        p.wait()
        # break

    # 统计结果
    p = subprocess.Popen("python " + " test/getResultEpc10.py " + common.jointPath([batchRunFileSetting.resultDir]),
                         shell=True)

    p.wait()
