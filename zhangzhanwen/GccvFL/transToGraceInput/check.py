# -*- coding: utf-8 -*-
# python Version
import pickle
import common
import Setting

def juge(oldData,generateData):
    if len(oldData['.in']) != len(generateData['inList']):
        return 'in文件不对'
    if len(oldData['AC'])+len(oldData['WA']) != len(generateData['fileId']):
        return '代码文件数量不对'
    return '无异议'

if __name__ == "__main__":
    pklFileList = common.dirList("./result")
    print("共生成problem.pkl%d个"%len(pklFileList))
    dataList = common.dirList(Setting.path)
    print('数据集目录下共有%d'%len(dataList))
    for i,item in enumerate(pklFileList):
        probleName = item[:-4]

        with open(common.jointPath(['./',Setting.path,probleName,Setting.problemInfoFileName]), 'rb') as f:
            oldData = pickle.load(f)
        with open(common.jointPath(['./', Setting.resultDir,item]), 'rb') as f:
            generateData = pickle.load(f)
        print( '文件%s： '%item,juge(oldData,generateData))
