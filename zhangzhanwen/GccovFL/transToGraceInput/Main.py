# -*- coding: utf-8 -*-

import subprocess
from tqdm import tqdm
import os, sys
import Setting
import init
import generateCoverageInfo
import time

ecode = 'utf-8'

if __name__ == "__main__":
    dev = Setting.dev

    datadir = Setting.path
    # 整理程序、IO文件
    startTime = time.perf_counter()

    print("正在获取", datadir, "目录下的相关文件")
    probleList = init.init(datadir)
    # probleList = init.init()
    # 开始编译并保留wa程序

    print("开始生成覆盖信息")
    generateCoverageInfo.start(probleList)

    print("使用覆盖信息")
    print("时间： " ,time.perf_counter() - startTime)