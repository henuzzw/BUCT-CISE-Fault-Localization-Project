# -*- coding: utf-8 -*-
# python Version
python = "python"

# 数据集所在目录
path = "./Codeflaws/codeflaws"
# 正确代码文件夹的识别码
AC = "AC"
# 测试文件的路径
TEST = "TEST_DATA_TCG1"
# 错误代码文件夹的识别码
WA = "WA"
# 是否输出测试信息
dev = {"Main":False,"init": False, "generate": False, "multiThread": False,"extractCoverInfo":False}
# 输入文件
IN = ".in"
# 输出文件
OUT = ".out"

# clang++-6.0
clangEnv = "/usr/bin/clang++-6.0 "

# 是否生成AC代码的覆盖信息
getAcInfo = False

# 是否生成WA代码的覆盖信息
getWaInfo = True

# test

# 无需配置，用于存储路径的key
problemDirName = 'path'

# 无需配置
problemCode = 'code'

# 生成覆盖信息的文件夹的名称，此文件夹将在对应问题的目录下创建
gcovDirName = "gcov"

#保存目录信息的文件名字，此文件将存储在对应问题的目录下
problemInfoFileName = "problemInfo.pkl"

#是否保存保存信息原始文件  ，将保存在对应问题目录下的gcov目录里
saveCoverInfo = True

#对于每个源代码是否累加覆盖次数
cumulativeCoverTimes = False

# 结果保存的位置  在主目录的相对路径
resultDir = "./result日期"


# 语句类
