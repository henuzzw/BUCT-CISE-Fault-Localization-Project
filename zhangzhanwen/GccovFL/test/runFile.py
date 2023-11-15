import os
import  subprocess
import  common
import batchRunFileSetting
import  sys
from tqdm import tqdm
# 这个程序是个脚本，用来批量运行Grace，要在项目的根目录处执行
# if __name__ == "__main__":
#     fileList = common.dirList(batchRunFileSetting.preFileDir)
#     #print(fileList)
#
#     FileToGraceList = {}
#     for i,item in enumerate(fileList):
#         if len(item) == 8:
#
#             for j,itemG in enumerate(fileList):
#                 if item in itemG:
#                     FileToGraceList[item] = itemG
#     p = subprocess.Popen("mkdir  "+ batchRunFileSetting.resultDir,shell=True)
#     print(FileToGraceList)
#     for key  in   (FileToGraceList):
val = sys.argv[1]
print(val)
p = subprocess.Popen("python runtotal.py "+sys.argv[1],shell=True)
p.wait()
p = subprocess.Popen("mkdir "+batchRunFileSetting.resultDir+"/"+ val,shell=True)
p.wait()
p = subprocess.Popen( "mv " +  val + "* " + common.jointPath([ batchRunFileSetting.resultDir+"/"+ val]), shell=True)
p.wait()



