# 各个文件及及其用法说明
* batchRunFileSetting.py
这个是配置文件，本来仅是batchRunFile.py的配置文件，但是后续的新文件也需要用到，就一块用了，里面由对参数的详细解释
* batchRunFile.py
这是一个批量运行Grace2.0的脚本，它的配置文件是同一目录下的batchRunFileSetting.py。里面的参数都有详细介绍
目前，这个文件会自动执行getResultEpc10.py和draw.py  生成json文件及其draw.py。运行前要修改配置文件，防止覆盖原来的结果，或者给原来的结果北方，

* common.py
这是一个抽出了几个常用函数的脚本，比如获取某一路径下所有的文件及其文件夹的方法等
* getResultEpc10.py 
这是等所有的数据集运行完成后，将统计所有的topn指标以及exam指标，统计成json文件

* draw.py
这是一个画图的软件，命令为python draw.py 参数1 文件或文件夹路径，参数1为dir时表示对文件夹下的json文件统计，对top1、3、5、10统计对比， 


* readFile.py 这个是用来读取pkl文件的，python readFile.py 参数1  文件路径 
    * 有以下几种用法
    * python readFile.py pkl 文件路径1  会输出命令和文件内容
    * python readFile.py json 文件路径1  会输出命令和文件内容
    * python readFile.py pkl 文件路径1 > file.json  会将pkl内容输入进file.json中  
* 一个分类统计top结果的东西
    