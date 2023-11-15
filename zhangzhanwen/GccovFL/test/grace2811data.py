
import common
import batchRunFileSetting
temp = common.dirList(batchRunFileSetting.baseLineDir)

for dir in temp:
    print(dir)