import json
import requests
import hashlib
import time as Time
import csv
import logging

# import sys
# sys.path.append("Setting")
#   "baseUrl": "http://10.26.122.64/dataCenter/rtdb/redis/selectByCid?cid=",
# 读取配置文件
Setting = ...
equipmentInfo = ...
pointInfo = []
with open('./Setting/Setting.json', 'r', encoding='utf-8-sig') as configData:
    Setting = json.load(configData)

with open('./Setting/LJHpointInfo.csv', newline='', encoding='utf-8-sig') as csvfile:
    print("准备中")
    for line2 in csvfile.readlines():
        line2 = line2.strip()

        line1 = line2.split(',', -1)
        pointInfo.append(line1)
    print("准备完成", str(len(pointInfo)))
    # # pointInfo = csv.reader(csvfile, delimiter=',', quotechar='"')
    #
    # for row in pointInfo:
    #     print(row, '\n\n')
    #     pointInfodir[row[-1]] = row
    # # pointInfo 是一个二维数组矩阵，跟csv一样


# with open('./Setting/equipmentInfo.json', 'r', encoding='utf-8-sig') as equipmentData:
#     equipmentInfo = json.load(equipmentData)
#
# with open('./Setting/pointInfo.json', 'r', encoding='utf-8-sig') as pointData:
#     pointInfo = json.load(pointData)

# "url": "http://10.106.163.234:8001/data-interface-sg2k-c11/data/getDeviceTelemetry/*?machineERPID=",
# 本类为了解决json编码的问题
class NpEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, np.integer):
            return int(obj)
        elif isinstance(obj, np.floating):
            return float(obj)
        elif isinstance(obj, np.ndarray):
            return obj.tolist()
        else:
            return super(NpEncoder, self).default(obj)


def is_even(item):
    # print(pointInfo[1][1])
    for row in pointInfo:
        if item['id'] == row[-1]:
            return True
    return False


# print(type(pointInfo))
# print(is_even({'id':'P01231000001810031762AHCDANBBTC00013253'}))
# 从接口获取数据
sum = 0


def getRealPointData(cid):
    try:
        logging.info("正在获取工艺量数据..." + Setting["baseUrl"] + cid)
        print("正在获取数据")
        url = Setting["baseUrl"] + cid
        res = requests.get(url, headers={'Authorization': 'Bearer '}).text
        # print("获取设备数据",   res, '\n')
        res = json.loads(res)
        logging.info("获取成功.共获取" + str(len(res)) + "条数据")
        # print("获取设备数据", cid, res, '\n')
        i2 = 0
        # resItem = res[0]
        sum = 0
        print("获取完成数据")
        for resItem in res:
            for i, csvItem in enumerate(pointInfo):
                # print(resItem['id'] , csvItem[0])
                if (resItem['id']) == (csvItem[0]):
                    sum += 1
                    pointData = {
                        "company": "10000018",  # 公司
                        "Factory": "10017799",  # 工厂
                        "plant": csvItem[4],  # 设备id
                        "channel": csvItem[0],  # 测点id
                        "value": resItem['value']["doubleValue"],
                        "datetime": resItem['value']['time'],
                    }
                    # print(pointData)
                    url = Setting["node-url"]
                    # print(pointData)
                    tre_timeArray = Time.localtime(int(int(pointData["datetime"]) / 1000))
                    # print(pointData)
                    pointData["datetime"] = Time.strftime("%Y-%m-%d %H:%M:%S", tre_timeArray)
                    # print(pointData)
                    children = pointData['channel']
                    pointData["channel"] = children
                    # print(pointData)
                    # print("写入成功")
                    # 进行测点写入中间件的操作
                    try:
                        r = requests.post(url, json.dumps(pointData, cls=NpEncoder))  # 向中间件Post数据

                        # print("张总api接口返回值 ", r, r.text)
                        if (r.text.find('succ') != -1):
                            print('写入成功', pointData, r, '\n', end=" ")
                        else:
                            print('写入失败', pointData, r, '\n', end=" ")
                        # if configInfo['dev']:
                        #     return;
                        # break
                        # print(f'时间：{pointData["datetime"]} 值: {pointData["valuePeak"]} 设备：{pointData["channel"]} 公司：{pointData["company"]} 分厂：{pointData["Factory"]}')
                    except:
                        print("error: 数据写入中间件失败, 中间件地址: %s", url)
                        return {
                            "code": 119
                        }
                # resData["data"].append(pointData)
                # print(resData)
        # return resData
    except Exception as result:
        print("出错", str(result))
        return {
            'code': 400
        }
    print(cid, "共写入数据量：", sum, "条")
    logging.info("共写入数据量" + str(sum) + "条数据")
    return {"code": 200}


def init():
    for i in range(len(equipmentInfo)):
        equipmentInfo[i]["point"] = []
        for j in range(len(pointInfo)):
            equipmengName = pointInfo[j]['equipmentName']
            if equipmengName == equipmentInfo[i]["equipmentNo"].replace('-', ''):
                pointInfo[j]['equipmentNo'] = pointInfo[j]['equipmentName']
                pointInfo[j]['ERPcode'] = equipmentInfo[i]['ERPcode']
                pointInfo[j]['equipmentName'] = equipmentInfo[i]["equipmentName"]
                equipmentInfo[i]["point"].append(pointInfo[j])


if __name__ == "__main__":
    # getRealPointData()
    print("开始运行")
    # init();
    logging.basicConfig(level=logging.INFO, format='%(asctime)s %(levelname)s %(message)s', filename='log.log',
                        filemode='a')
    sum = 0
    while True:
        print(Setting['cid'])
        for item in Setting['cid']:
            res = getRealPointData(item)

            sum = 0
            print(res)
            if Setting['dev']:
                break
        if Setting['dev']:
            break
        print("------------------------------------------------\n")
        Time.sleep(Setting['sleepTimeMs'])
