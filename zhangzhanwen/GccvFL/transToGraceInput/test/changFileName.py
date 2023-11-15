import os
import sys
# 获取指定目录下的所有文件
files = os.listdir(sys.argv[1])

# 遍历所有文件并为其添加pp
for file in files:
    # 忽略文件夹
    if not os.path.isdir(file):
        # 获取文件名和扩展名
        file_name, file_ext = os.path.splitext(file)
        new_file_name = file_name +'.c'
        # 重命名文件
        print(file,new_file_name)
        os.rename( os.path.join(sys.argv[1], file), os.path.join(sys.argv[1],new_file_name))