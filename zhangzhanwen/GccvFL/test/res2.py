import pandas as pd  # pandas是强大的数据处理库
from pyecharts.charts import Map
from pyecharts import options as opts

data = pd.read_excel('map.xlsx')
# print(data)
province = list(data["省份"])
gdp = list(data["数量"])
provinceId = list(str(data['id']))
# print(province,gdp)
name_map={}
province_list = []
for item in range(len(province)):
    province_list.append(( province[item],gdp[item]))
    name_map[ province[item] ] =""
# province_list = [list(z) for z in zip(province, gdp)]
# 将省份和数量输出
print(name_map,province_list)

# 软件工程专业
c = (
    Map(init_opts=opts.InitOpts(width="3000px", height="2000px"))  # 可切换主题
        .set_global_opts(
        title_opts=opts.TitleOpts(title="软件工程专业院校在全国的分布"),
        visualmap_opts=opts.VisualMapOpts(
            min_=0,
            max_=2000,
            range_text=['院校数量区间:', ''],  # 分区间
            is_piecewise=True,  # 定义图例为分段型，默认为连续的图例
            pos_top="middle",  # 分段位置
            pos_left="left",
            orient="vertical",
            split_number=10  # 分成10个区间
        )

    )
        .add("map", province_list, maptype="china" ,name_map=name_map)
        .render("map.html")
)

