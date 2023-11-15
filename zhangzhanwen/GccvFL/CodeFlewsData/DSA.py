import os
import util
import datetime
import json
import random
# from memory_profiler import profile

import mbfl.command as mbfl
from CodeFlewsData.codeflaws_version_control import Qr_excel
from CodeFlewsData.data_codeflaws import Codeflaws

# log信息
# import log as LG
# global log
# log = LG.Log()

def perdef():

    global continueread
    continueread = True

    # 版本控制信息
    global vc_path
    vc_path = './report/data_codeflaws.xlsx'
    global sheet
    sheet = 'muti'
    global json_path
    json_path = './report/DSA/random'
    global json_name
    json_name = 'data_%s.json'

    global max_workers
    max_workers = 1



def hmbfl_single_thread():
    # codeflaws
    src = os.path.join(os.getcwd(), 'cdata', 'version')
    print(src)


    # 读取版本控制信息
    date_read = Qr_excel().read(vc_path, sheet)

    # 版本控制文件读取标记
    i = -1

    # 开始循环
    while i < len(date_read)-1:
        i += 1
        if date_read[i, 4] == 0:
            # 跳过不需要的文件
            continue


        Fault_Record = eval(date_read[i, 1])
        doc = date_read[i, 0]
        describe = str(doc) + '-' + str(i)

        if doc == 'v1637':
            continue


        if continueread:
            havedoc = False
            for file in os.listdir(json_path):
                if doc in file:
                    havedoc = True
            if havedoc:
                continue

        single_hmbfl(src, doc, Fault_Record, describe)


def data_add():
    # codeflaws
    src = os.path.join(os.getcwd(), 'cdata', 'version')
    print(src)

    # 开始循环
    for file in os.listdir(json_path):
        path = os.path.join(json_path, file)
        try:
            with open(path) as f_obj:
                data_json = json.load(f_obj)
        except:
            print('%s 读取失败 %s' % (datetime.datetime.now(), file))
            continue

        doc = list(data_json.keys())[0]
        fom_num = data_json[doc]['fomnum']
        if 'homs' in data_json[doc] and 'hom_list_all' not in data_json[doc]:
            hom_list_old = data_json[doc]['homs']
            del data_json[doc]['homs']
        else:
            hom_list_old = data_json[doc]['hom_list_all']

        testcase = data_json[doc]['testcase']
        true_out = data_json[doc]['true_out']
        src_or = data_json[doc]['path']

        hom_list_new = []
        hom_list_lack = []
        lasttime = datetime.datetime.now()
        for i, hom in enumerate(hom_list_old):
            print('\r %s %s- %s/%s %s +%s' % (datetime.datetime.now(), doc, i, len(hom_list_old), hom['time'], datetime.datetime.now() - lasttime), end='')
            lasttime = datetime.datetime.now()
            try:
                time = int(hom['time'])
            except:
                time = datetime.datetime.strptime(hom['time'], "%H:%M:%S.%f").microsecond

            if type(hom['message']) == str:
                hom['message'] = eval(hom['message'])
                hom['time'] = time

            if time > 0:
                hom_list_new.append(hom)
            else:
                hom_list_lack.append(hom)

        for i, hom in enumerate(hom_list_lack):
            if len(hom_list_new) >= fom_num*15:
                break
            mut = hom['message']

            # 跳过无法变异hom
            src_mut = os.path.join(os.getcwd(), 'mbfl', 'fom', '%s-%s.c' % (doc, i))
            if not mbfl.Fom().mutation_build(src_or, src_mut, mut):
                continue

            # if len(chosed_hom)%10 == 0:

            print('\r %s %s-%s ' % (datetime.datetime.now(), doc, i), end='')

            st = datetime.datetime.now()
            # 执行变异体
            singleout = Codeflaws().single_testlist("%s-%s" % (doc, i), src_mut, testcase)
            if not singleout[0]:
                continue
            et = datetime.datetime.now()

            if et-st == 0:
                continue
            out = Codeflaws().get_list_from_out(true_out, singleout[2])
            hom['message'] = mut
            hom['out_or'] = singleout[2]
            hom['out_list'] = out
            hom['time'] = str(et-st)
            hom_list_new.append(hom)


        data_json[doc]['hom_list_all'] = hom_list_new
        with open(path, 'w') as f_obj:
            json.dump(data_json, f_obj)

        print('\r %s 存储完成 %s,fomnum: %s, homnum: %s ' % (datetime.datetime.now(), doc, fom_num, len(hom_list_new)))


def single_hmbfl(src, doc, Fault_Record, describe):
    # ----------------------------------------------------------------------------
    # 初始化数据
    data_return = util.Datasave()


    src_doc = os.path.join(src, doc, 'test_data')  # 题目路径
    src_true = os.path.join(src_doc, 'true_root', 'source', 'tcas.c')  # 正确程序路径
    src_or = os.path.join(src_doc, 'defect_root', 'source', 'tcas.c')  # 故障程序路径
    src_tests = os.path.join(src_doc, 'inputs')  # 测试用例路径

    data_return.path = src_or
    data_return.doc = doc
    data_return.Fault_Record = Fault_Record
    pre_del_s = datetime.datetime.now()



    # ----------------------------------------------------------------------------
    # 执行真实程序获取真实执行结果
    print('\r %s %s - 获取真实执行输出' % (datetime.datetime.now(), describe), end='')
    singleout = Codeflaws().single('tcas', src_true, src_tests)
    if not singleout[0]:
        print('\r %s %s - 获取真实执行输出失败' % (datetime.datetime.now(), describe))
        return
    data_return.testcase, data_return.true_out = singleout[1], singleout[2]
    del singleout

    # ----------------------------------------------------------------------------
    # 执行原始程序获取执行结果
    print('\r %s %s - 获取原始执行输出' % (datetime.datetime.now(), describe), end='')
    singleout = Codeflaws().single('tcas', src_or, src_tests)
    if not singleout[0]:
        print('\r %s %s - 获取原始执行输出失败' % (datetime.datetime.now(), describe))
        return
    or_out = singleout[2]
    data_return.or_out = or_out
    data_return.or_list = Codeflaws().get_list_from_out(data_return.true_out, or_out)
    del singleout


    # ----------------------------------------------------------------------------
    # 获取执行行
    print('\r %s %s - 获取执行' % (datetime.datetime.now(), describe), end='')
    singleout = Codeflaws().single('tcas', src_or, src_tests, data_return.or_list)
    if not singleout[0]:
        print('\r %s %s - 获取执行失败' % (datetime.datetime.now(), describe))
        return

    # ----------------------------------------------------------------------------
    # 生成一阶变异体
    fompath = r'./report/c/Fom-%s-original.txt' % doc
    print('\r %s %s 开始生成一阶变异体' % (datetime.datetime.now(), describe), end='')
    fompath = mbfl.Fom().fom_data(fompath, src_or, singleout[1])
    print('\r %s %s 生成完成' % (datetime.datetime.now(), describe), end='')
    del singleout

    # ----------------------------------------------------------------------------
    # 删除不通过编译变异体
    print('\r %s %s 删除无效变异体' % (datetime.datetime.now(), describe), end='')
    creat_src = os.path.join(os.getcwd(), 'mbfl', 'fom')
    fompath = mbfl.Fom().del_nocompile_fom(fompath, src_or, creat_src)
    fom = util.File().read_line(fompath)
    fomnum = len(fom)
    data_return.fomnum = fomnum
    data_return.fom_list = fom
    del fom
    print('\r %s %s 删除完成' % (datetime.datetime.now(), describe), end='')

    # ----------------------------------------------------------------------------
    # 使用一阶变异数据进行全随机变异
    print('\r %s %s 开始生成二阶变异体' % (datetime.datetime.now(), describe), end='')
    hom_path = mbfl.Mutation().random_hmbfl(fompath, r'./report/c/Hom-%s-original.txt' % doc)
    print('\r %s %s 生成完成' % (datetime.datetime.now(), describe), end='')

    # pre_del用时
    data_return.time_spend['pre_del'] = (datetime.datetime.now() - pre_del_s).microseconds
    # del用时开始
    del_s = datetime.datetime.now()


    # ----------------------------------------------------------------------------
    # 开始变异
    print('\r %s %s 开始变异 som-num: %s ' % (datetime.datetime.now(), describe, fomnum), end='')
    homs = util.File().read_line(hom_path)
    total_hom = len(homs)

    # 设置循环数量
    all_hom = [x for x in range(total_hom)]
    chosed_hom = []

    # 挑选不超过fom数量15倍的二阶变异体
    lasttime = datetime.datetime.now()
    while len(chosed_hom) < fomnum*15 and 0 < len(all_hom):
        # 随机挑选hom
        j = random.sample(range(len(all_hom)), 1)[0]
        homlocal = all_hom.pop(j)
        mut = homs[homlocal]

        # 跳过无法变异hom
        src_mut = os.path.join(os.getcwd(), 'mbfl', 'fom', '%s-%s.c' % (doc, j))
        if not mbfl.Fom().mutation_build(src_or, src_mut, eval(mut)):
            continue

        # if len(chosed_hom)%10 == 0:

        print('\r %s %s/%s/%s  +%s' % (datetime.datetime.now(), describe, len(chosed_hom), min(total_hom, fomnum*15), datetime.datetime.now() - lasttime), end='')
        lasttime = datetime.datetime.now()
        st = datetime.datetime.now()

        # 执行变异体
        singleout = Codeflaws().single("%s-%s" % (doc, j), src_mut, src_tests)
        if not singleout[0]:
            continue


        # print('%s 获取输出信息' % datetime.datetime.now())
        # 获取输出信息
        out = Codeflaws().get_list_from_out(data_return.true_out, singleout[2])
        for mes in eval(mut):
            if mes[0] not in data_return.out_dic:
                data_return.out_dic[mes[0]] = []
            data_return.out_dic[mes[0]].append(out)


        # print('%s 保存数据' % datetime.datetime.now())
        # **********保存数据
        et = datetime.datetime.now()
        chosed_hom.append(homlocal)
        # data_return.fom_time.append((et-st).microseconds)
        # data_return.out_list.append(out)
        # data_return.fom_list.append(mut)
        data_return.homs.append(util.Datasave().hom)
        data_return.homs[-1]['message'] = eval(mut)
        data_return.homs[-1]['out_list'] = out
        data_return.homs[-1]['out_or'] = singleout[2]
        data_return.homs[-1]['time'] = (et - st).microseconds
        # print('%s 保存数据完成' % datetime.datetime.now())


    # hom数量
    data_return.homnum = len(chosed_hom)

    for i in range(len(all_hom)):
        mut = homs[i]
        data_return.homs.append(util.Datasave().hom)
        data_return.homs[-1]['message'] = mut


    # del用时结束
    data_return.time_spend['del'] = (datetime.datetime.now() - del_s).microseconds


    # 可编译
    data_return.compile = True
    # print(datetime.datetime.now(), describe, '执行完成')

    date_json = dict()
    date_json[doc] = dict()

    date_json[doc]['or_out'] = data_return.or_out
    date_json[doc]['fomnum'] = data_return.fomnum
    date_json[doc]['hom_list_all'] = data_return.homs
    date_json[doc]['homnum'] = data_return.homnum

    date_json[doc]['Fault_Record'] = Fault_Record
    date_json[doc]['compile'] = data_return.compile
    date_json[doc]['path'] = data_return.path
    date_json[doc]['true_out'] = data_return.true_out
    date_json[doc]['or_list'] = data_return.or_list
    date_json[doc]['out_dic'] = data_return.out_dic
    date_json[doc]['time_spend'] = data_return.time_spend
    date_json[doc]['testcase'] = data_return.testcase

    # ********存储数据
    path = os.path.join(json_path, json_name % doc)
    with open(path, 'w') as f_obj:
        json.dump(date_json, f_obj)
    f_obj.close()
    print('\r %s %s 存储完成' % (datetime.datetime.now(), doc))


    return


if __name__ == '__main__':
    perdef()
    hmbfl_single_thread()
    # data_add()

