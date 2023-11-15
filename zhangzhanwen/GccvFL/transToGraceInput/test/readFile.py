# -*- coding: utf-8 -*-
# import Setting
import json
import os.path
import pickle
import subprocess
import sys


print(sys.argv)


def toJson(path=sys.argv[2]):
    with open(path, 'rb') as f:
        item = pickle.load(f)
        with open(path + '.json', 'w') as ff:
            ff.write(json.dumps(item))
            print('转换完成')
def dirList(path=""):
    p = subprocess.Popen("ls " + path, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    p.wait()
    fileList, err = p.communicate()
    return fileList.decode('utf-8').rstrip('\n').split("\n")
def pkl(path=sys.argv[2]):
    print(sys.argv)
    with open(path, 'rb') as f:
        item = pickle.load(f)
        print(item)
def pwd():
    p = subprocess.Popen("pwd ", shell=True, stdout=subprocess.PIPE,stderr=subprocess.PIPE )
    p.wait()
    fileList,err = p.communicate()
    return fileList.decode("utf-8").split("\n")[0]
def txt(path=sys.argv[2]):
    with open(path, 'rb') as f:
        item = f.readlines()
        print(item)


def toJsonByDir(path=sys.argv[2]):
    fileList = dirList(path)

    for file in fileList:
        command = f"python {sys.argv[0]} pkl {os.path.join(path, file)}"
        result = subprocess.run(command, shell=True, capture_output=True, text=True)

        if result.returncode == 0:
            # 如果命令成功执行，将输出写入JSON文件
            json_file_name = f"{file}.json"
            with open(json_file_name, 'w') as json_file:
                json_file.write(result.stdout)
        else:
            print(f"Failed to process {file}: {result.stderr}")

if __name__ == '__main__':
    if sys.argv[1] == 'pklDirToJson':
        toJsonByDir(sys.argv[2])
    elif sys.argv[1] == 'pkl':
        pkl()

    elif sys.argv[1] == 'txt':
        txt()
    elif sys.argv[1] == 'toJson':
        toJsonByDir()

        # print(item)
