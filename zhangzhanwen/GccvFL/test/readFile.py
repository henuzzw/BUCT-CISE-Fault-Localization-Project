
# -*- coding: utf-8 -*-
# import Setting
import json
import pickle
import sys
# sys.path.append('..')
# import common
# # 添加一行代码到文件末尾
# with open("file.txt", "a") as f:
#     f.write("\nHello, World!")
#
#
# # 打开文本文件
# with open("file.txt", 'r') as f:
#     lines = f.readlines()
#
# 打开pkl文件
# print(common.dirList())
print(sys.argv)

with open(sys.argv[2], 'rb') as f:
    if sys.argv[1] == 'pkl':
        item = pickle.load(f)
        print(item)
    if sys.argv[1] =='txt':
        item = f.readlines()
        print(item)
    if sys.argv[1] == 'toJson':
        item = pickle.load(f)
        with open(sys.argv[2]+'.json','w') as ff:
            ff.write(json.dumps(item))
        print('转换完成')
    # print(item)


