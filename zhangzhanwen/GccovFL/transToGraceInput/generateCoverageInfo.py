# -*- coding: utf-8 -*-
import pickle
import subprocess
from tqdm import tqdm
import os, sys
import Setting
ecode='utf-8' # 以utf-8的形式接收子程序控制台信息

dev = Setting.dev["generate"]
"""
$ gcc -fprofile-arcs -ftest-coverage test.c -o test
zhangzhanwen@cise-Super-Server:~$ ./test < in.in 
(-2.010,102.010)
$ gcov test.c -o ~/
zhangzhanwen@cise-Super-Server:~$ vi test.c.gcov 
"""




# 开始遍历每个problem，对于每个problem的代码，将测试用例输入，并保存
def start(problemList):
    # print (problemList)
    pList=[]
    for problem in tqdm(problemList):
        # 在每个problem目录里，针对每个问题，创建gcov文件夹，目的是用来保存编译所生成文件，

        getPath = subprocess.Popen("pwd ", shell=True, stdout=subprocess.PIPE,stderr=subprocess.PIPE )
        if dev:
            print ( problem[Setting.problemDirName],getPath)
        subprocess.Popen("mkdir "+Setting.gcovDirName, shell=True, cwd=problem[Setting.problemDirName]).wait()

        # 读取当前problem的目录信息
        with open(os.path.join(problem['path'],Setting.problemInfoFileName),'wb') as f:
            pickle.dump(problem,f)
        # print (problem)
            # 开启多进程， 子进程的执行目录就是在WA的目录下，生成的
        getPath.wait()
        path,err = getPath.communicate()
        path = path.decode(ecode)
        # if dev:
        #     print ("path = " ,path,"  os = ",os.path.join(path ,"multiThreadGenerateCoverageFile.py "))


        p = subprocess.Popen(Setting.python+" "+os.path.join(path.split("\n")[0] ,"multiThreadGenerateCoverageFile.py "),shell=True, cwd=os.path.join("./",problem[Setting.problemDirName]))
        # p.wait()
        pList.append(p)
        # break
        # p.wait()
        if Setting.dev["Main"]:
            break
    for p in pList:
        p.wait()

"""
subprocess.Popen("pwd ", shell=True)
    subprocess.Popen("mkdir out", shell=True)
    subprocess.Popen("ls ", shell=True)
    subprocess.Popen("cd out ", shell=True)

    subprocess.Popen("pwd", shell=True,cwd='./out')
    # subprocess.Popen("pwd ", shell=True)
    return []
"""