import json

from pyecharts import options as opts
from pyecharts.charts import Line, Page
import sys
import common

def draw2(arr,xaxis,name):
    page = Page()

    # 读取JSON文件并加载成Python数据结构

    # 添加数据
    line_chart = Line()
    line_chart.add_xaxis(xaxis_data=xaxis)
    for ydatas in arr:

        #
        line_chart.add_yaxis(series_name=arr[ydatas]['name'], y_axis=arr[ydatas]['ydata'],label_opts=opts.LabelOpts(is_show=False))
    line_chart.set_global_opts(
        title_opts=opts.TitleOpts(title="EXAM" ),
        xaxis_opts=opts.AxisOpts(name=""),

        # yaxis_opts=opts.AxisOpts(title="top"),
        tooltip_opts=opts.TooltipOpts(trigger="axis"),
    )
    page.add(line_chart)
    # 渲染图表并保存到文件
    page.render(name+".html")

def getVal(files,xaixs):
    C = []
    Cpp = []
    ss = files.keys()
    baseLineC = files["C"][-2]["val"]
    baseLineCpp = files["Cpp"][-2]["val"]
    All = []
    for x in xaixs:
        C.append(len([y for y in baseLineC if y <= x])/164)
        Cpp.append(len([y for y in baseLineCpp if y <= x])/188)
        # x =
        All.append((len([y for y in baseLineC if y <= x])+len([y for y in baseLineCpp if y <= x]))/(164+188))

        # print(x)
        # print("  ",len([y for y in baseLineC if y <= x])/164)
        # print("  ",len([y for y in baseLineCpp if y <= x])/188)
    return C,Cpp,All

if __name__ == "__main__":
    fileList = ["GNNStu","Grace","SBFL(Ochiai)","VFL(Ochiai)","VSBFL (Ochiai)"]

    xaixs = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0]
    Arr = {"C":{},"Cpp":{},"All":{}}

    with open("json/Performance_Of_Techniques_on_Different_CateGories4.2223.51.json", "rb") as f:
        temp = json.load(f)
    for files in temp:
        if ".json" not in files:
            continue
        for baseLine in fileList:
            if baseLine in files:
                print(baseLine)
                C,Cpp,All = getVal(temp[files],xaixs)
                Arr["C"][baseLine] = {"name": baseLine,"ydata": C}
                Arr["Cpp"][baseLine] = {"name": baseLine, "ydata": Cpp}
                Arr['All'][baseLine] ={"name": baseLine,"ydata":All}
                # print(Arr["Cpp"][baseLine])
                print(baseLine)


    xaixs = ["0", "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1.0"]
    draw2(Arr["C"],xaixs,    "RQ2C")
    draw2(Arr["Cpp"],xaixs,  "RQ2Cpp")
    draw2(Arr["All"], xaixs, "RQ2All")
    # print(Arr[''])




