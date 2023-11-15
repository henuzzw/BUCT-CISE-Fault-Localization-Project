# -*- coding: utf-8 -*-
import os
import subprocess
ecode='utf-8' # 以utf-8的形式接收子程序控制台信息

"""返回当前路径下的文件以及文件夹路径"""

def dirList(path=""):
    p = subprocess.Popen("ls "+path, shell=True, stdout=subprocess.PIPE,stderr=subprocess.PIPE )
    p.wait()
    fileList,err = p.communicate()
    return fileList.decode(ecode).rstrip('\n').split("\n")

def pwd():
    p = subprocess.Popen("pwd ", shell=True, stdout=subprocess.PIPE,stderr=subprocess.PIPE )
    p.wait()
    fileList,err = p.communicate()
    return fileList.decode(ecode).split("\n")[0]
def jointPath(pathList):
    res = ""
    for path in pathList:
        res = os.path.join(res, path)
    return res
#


# 错误行号

def errorLineNumber(path=''):
    fileList =  dirList(path)
    for i,item in enumerate(fileList):
        with open( jointPath([path,item]), 'r') as f:
            lines = f.readlines()
            print(lines)
            print('\n')