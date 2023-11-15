#BCZY
>BUCT CISE ZZW YYDS
## Introduction
* 本系统针对C/C++源代码获取覆盖信息
* 程序名为BCZY  取自 BUCT - CISE - ZZW - YYDS 的首字母
## 环境配置
* 本地要有GCC、G++ 命令。命令中要可使用参数fprofile-arcs -ftest-coverage (基本上都没问题)
* 尽量在Linux运行，没试过Windows，不知道可不可行
* pip Install tqdm os sys subprocess  安装依赖

## 用法
* 在Linux中
python Main.py

## 输出
此程序BCZY将回在此目录下创建result文件夹(文件夹名称可以在Setting中更改)  并会对每个problem运行结果创建单独的.pkl文件。
* {
    * 'pwd': 数据集的路径,

    * 'id': 问题Id,
    * 'fileList': 代码文件列表，内含代码信息[{
         *    'id': 文件Id,
         *    'pwd': 文件路径,
         *    'result': list类型 用于存储 每个测试输出是否正确,
         *    'lineId': 文件中的每行代码，内含Id，代码，类型，行号 
         *    [{'id': 1, 'code': '', 'type': 'funCall', 'lineNum': 1}]
         * 'maxi': [代码Id][测试用例Id]   maxi[i][j]表示第i行代码是否被第j个测试用例覆盖,
         * 'funList': 函数列表，因为别的工作需要，我把函数抽出来了 。分别是 文件路径，函数Id，函数开始行号，结束行号，函数名
     [{'pwd': '/home/zhangzhanwen/transtoGraceInput/ITSP-data/2825/271150_buggy.c', 'id': 0, 'startLine': 3,
         'endLine': 22, 'name': 'int main()'}],
         * 'codeList': 同lineId 
     },
## 架构

- Main.py
  - init.py 用于生成每个问题下文件的目录结构
  - generateCoverageInfo.py  开始遍历每个问题，对于每个问题开新进程调用下方的multiThreadGenerateCoverageFile文件
    - multiThreadGenerateCoverageFile.py    # 对于每个代码，将按顺序编译运行，得覆盖结果，最后调用extrctCoverInfo文件
      - extractCoverInfo.py   # 整理覆盖信息，在根目录下生成或写入对应pkl文件    
- Setting.py 为了普适需求，在这里灵活配置了许多变量 比如python版本、数据集目录、文件夹名称、dev等
- common.py 里面写了一些函数，供上述程序调用

## 注意
* 在运行之前，务必删除上次在result目录生成的pkl文件，不想删除的话，更改Setting.resultDir也可

## 关于新增数据集的问题
* AC文件夹
    *  如果没有AC文件，也要创建对应的文件夹(文件名中要包含Setting中的AC字符串)
* WA文件夹
    *  件名中要包含Setting中的WA字符串（用于识别WA文件夹）
* TEST文件夹
    *  测试用例文件夹的名字必须与Setting中的TEST保持一致
    *  对于一对测试用例.in与.out，文件名必须一致 
* Tag
    * 标签文件夹的名字必须包含“Tag”
    * 对于每个Tag文件文件
        *   第一行为错误代码文件名 
        *   第二行正确代码文件名或者“noAcFile”
        *   第三行为错误行行号，对于行号之间用逗号隔开
    

