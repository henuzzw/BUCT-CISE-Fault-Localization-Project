import pickle

from pyecharts import options as opts
from pyecharts.charts import Line, Page
import sys
import common

# 创建折线图对象
import json


# 使用方法 ，python draw.py  file fileName  画单个图谱
# python draw.py  dir path  画此图谱下所有json格式的图
def draw(name = "line_chart",path="result.json"):
    print(path)
    # 读取JSON文件并加载成Python数据结构
    with open(path, 'rb') as f:
        end = json.load(f)
    line_chart = Line()
    # print("end = ",end)
    # 添加数据
    line_chart.add_xaxis(xaxis_data=end ['questName'])
    line_chart.add_yaxis(series_name="top1", y_axis=end ['top1'])
    line_chart.add_yaxis(series_name="top3", y_axis=end ['top3'])
    line_chart.add_yaxis(series_name="top5", y_axis=end ['top5'])
    line_chart.add_yaxis(series_name="top10", y_axis=end ['top10'])
    # line_chart2 = Line()
    # line_chart2.add_xaxis(xaxis_data=end['amount']['questName'])
    # line_chart.add_yaxis(series_name="EXAM", y_axis=end['amount']['EXAM'])

    # 设置全局配置
    line_chart.set_global_opts(
        title_opts=opts.TitleOpts(title="name"),
        xaxis_opts=opts.AxisOpts(name="question"),
        yaxis_opts=opts.AxisOpts(name="topN"),
        tooltip_opts=opts.TooltipOpts(trigger="axis"),
    )

    # 渲染图表并保存到文件
    line_chart.render(name+".html")
def draw2(arr,xaxis):
    page = Page()

    # 读取JSON文件并加载成Python数据结构

    # 添加数据
    for ydatas in arr:
        line_chart = Line()
        line_chart.add_xaxis(xaxis_data=xaxis)


        for ydata in arr[ydatas]:

            line_chart.add_yaxis(series_name=ydata['name'], y_axis=ydata['ydata'])
        line_chart.set_global_opts(
            title_opts=opts.TitleOpts(title="top"+str(ydatas)),
            xaxis_opts=opts.AxisOpts(name="question"),
            # yaxis_opts=opts.AxisOpts(title="top"),
            tooltip_opts=opts.TooltipOpts(trigger="axis"),
        )
        page.add(line_chart)


    # line_chart.add_yaxis(series_name="top3", y_axis=end['amount']['top3'])
    # line_chart.add_yaxis(series_name="top5", y_axis=end['amount']['top5'])
    # line_chart.add_yaxis(series_name="top10", y_axis=end['amount']['top10'])
    # line_chart2 = Line()
    # line_chart2.add_xaxis(xaxis_data=end['amount']['questName'])
    # line_chart.add_yaxis(series_name="EXAM", y_axis=end['amount']['EXAM'])

    # 设置全局配置
    # line_chart.set_global_opts(
    #     title_opts=opts.TitleOpts(title="name"),
    #     xaxis_opts=opts.AxisOpts(name="question"),
    #     yaxis_opts=opts.AxisOpts(name="topN"),
    #     tooltip_opts=opts.TooltipOpts(trigger="axis"),
    # )

    # 渲染图表并保存到文件
    page.render("topN.html")

if __name__ == "__main__":
    if sys.argv[1] == "dir":
        temp = common.dirList(sys.argv[2])
        fileList = []
        topArr = {}
        xaxias = -1
        topArr[1] = []
        topArr[3] = []
        topArr[5] = []
        topArr[10] = []
        for i,item in enumerate(temp):
            if '.json' in item:
                fileList.append( common.jointPath([sys.argv[2],item]))
                data = ...
                with open(common.jointPath([sys.argv[2],item]),"rb") as f:
                    data = json.load(f)
                # print(item)
                topArr[1].append({
                    "name": item,
                    "ydata":data['top1'],
                })
                topArr[3].append({
                    "name": item,
                    "ydata":data['top3']
                })
                topArr[5].append({
                    "name": item,
                    "ydata":data['top5']
                })
                topArr[10].append({
                    "name": item,
                    "ydata":data['top10']
                })
                if xaxias == -1:
                    xaxias = data['questName']

        draw2(topArr,xaxias)




    else:
        draw(name=sys.argv[2].split('.')[0],path=sys.argv[2])