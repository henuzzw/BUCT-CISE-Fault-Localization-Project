import json
# import ijson
import math
import numpy as np
import socket
import util
import random

import mbfl.mbfl_for
import mbfl.command
import sbfl.sbfl_for
import sbfl.command
from mbfl.mutpolyn import new_mutation_trick
from CodeFlewsData.data_codeflaws import MutationRule

for_list = [
    "Tarantula",
    "Op2",
    "Jaccard",
    "Ochiai",
    "Dstar",
    "GP13",
    "Naish1",
    "Barinel",
    # "muse",
]


class Tools:
    # 计算二阶变异体精确度
    def precision_calculate(self, faultrecord, som):
        if not len(som) == 2:
            print('精确度计算 输入变异体错误')
            return False
        precision = 0
        for fom in som:
            line = fom[0]
            if line in faultrecord:
                precision += 1
        return precision

    # 计算变异算子种类
    def variety_calculate(self, som):
        variety = []
        for fom in som:
            operate = fom[3]
            for i, mutation_trick_dic in enumerate(new_mutation_trick):
                if operate in list(mutation_trick_dic.keys()):
                    variety.append(i)
        return variety

    # 聚类中，使用同一类簇中的变异体进行类RandomMix生成
    def clusterSameClassRandomMix(self, clusterdata, fom_list, times):
        times = times * 1.2
        som_classes = []
        tnum = 0
        for label in clusterdata:
            classfomlist = clusterdata[label]
            som_class = []
            for fom_i_loc in classfomlist:
                fom_i = fom_list[fom_i_loc]
                for fom_j_loc in classfomlist:
                    fom_j = fom_list[fom_j_loc]
                    if not MutationRule(fom_i['message'][0], fom_j['message'][0]):
                        continue
                    som = sorted([fom_i['message'][0], fom_j['message'][0]], key=lambda x: x[0])
                    som_class.append(som)
                    tnum += 1
            som_classes.append(som_class)
        try:
            ration = len(fom_list) * times / sum(list(map(lambda x: len(x), som_classes)))
        except:
            ration = 0

        som_list = []
        readnum = 0
        for som_class in som_classes:
            readnum += len(som_class)
            som_list += random.sample(som_class, min(math.ceil(len(som_class) * ration), len(som_class)))
            while len(som_list) > math.ceil(readnum * ration):
                som_list.pop(-1)

        return som_list

    # 聚类中，使用同一类簇中的变异体进行类RandomMix生成
    def clusterDifClassRandomMix(self, clusterdata, fom_list, times):
        times = times * 1.2
        som_classes = []
        tnum = 0
        for i, label_i in enumerate(clusterdata):
            for j, label_j in enumerate(clusterdata):
                if i >= j:
                    continue
                # 取上三角类簇
                som_class = []

                classfomlist_i = clusterdata[label_i]
                classfomlist_j = clusterdata[label_j]
                for fom_i_loc in classfomlist_i:
                    fom_i = fom_list[fom_i_loc]
                    for fom_j_loc in classfomlist_j:
                        fom_j = fom_list[fom_j_loc]
                        if not MutationRule(fom_i['message'][0], fom_j['message'][0]):
                            continue
                        som = sorted([fom_i['message'][0], fom_j['message'][0]], key=lambda x: x[0])
                        som_class.append(som)
                        tnum += 1
                som_classes.append(som_class)
        ration = len(fom_list) * times / sum(list(map(lambda x: len(x), som_classes)))

        som_list = []
        readnum = 0
        for som_class in som_classes:
            readnum += len(som_class)
            som_list += random.sample(som_class, min(math.ceil(len(som_class) * ration), len(som_class)))
            while len(som_list) > math.ceil(readnum * ration):
                som_list.pop(-1)

        return som_list

    def json_rules(self, path):
        try:
            with open(path) as f_obj:
                data_json = json.load(f_obj)
        except:
            print('读取异常 %s' % path)
            return False
        return data_json

    # 一阶数量的30倍，需要生成的高阶数量
    def guide_line_pair(self, list_source_line, mutant_num_every_order):
        now_rank = 1
        for source_line_index in range(len(list_source_line)):
            if source_line_index == 0:
                list_source_line[source_line_index][2] = now_rank
                now_rank += 1
            elif list_source_line[source_line_index][1] == list_source_line[source_line_index - 1][1]:
                list_source_line[source_line_index][2] = list_source_line[source_line_index - 1][2]
                now_rank += 1
            else:
                list_source_line[source_line_index][2] = now_rank
                now_rank += 1

        for source_line_index in range(len(list_source_line)):
            list_source_line[source_line_index][3] = now_rank - list_source_line[source_line_index][2]

        min_order_num = 2
        max_order_num = 2

        hom_line_pair = []
        for mutant_line_num in range(min_order_num,
                                     max_order_num + 1):  # Select between the min_order_numnd-order to max_order_numth-order mutants.
            list_choice_line_index = []  # list of choice line index.
            now_choice_index = 0  # number of current selections.

            mutation_source_num = mutant_num_every_order * mutant_line_num
            list_mutation_source_num = []
            sum_mutation_source_num = 0
            for source_line in list_source_line:
                list_mutation_source_num.append([source_line[0], source_line[3] * mutant_line_num, 0.0])
                sum_mutation_source_num += (source_line[3] * mutant_line_num)
            multiple = math.ceil(mutation_source_num / sum_mutation_source_num)
            sum_mutation_source_num = 0
            for mutation_source_num_index in range(len(list_mutation_source_num)):
                list_mutation_source_num[mutation_source_num_index][1] *= multiple
                sum_mutation_source_num += list_mutation_source_num[mutation_source_num_index][1]
            # print(list_mutation_source_num)

            for i in range(mutant_num_every_order):
                list_randomization_rate = []
                list_randomization_source_line_index = []
                # ==========Exclude situations where candidate statements are insufficient========================
                for mutation_source_num_index in range(len(list_mutation_source_num)):
                    if list_mutation_source_num[mutation_source_num_index][1] == 0:
                        list_mutation_source_num[mutation_source_num_index][1] += 1
                        sum_mutation_source_num += 1
                # =================================================================================================
                for mutation_source_num_index in range(len(list_mutation_source_num)):
                    list_mutation_source_num[mutation_source_num_index][2] = \
                    list_mutation_source_num[mutation_source_num_index][1] / sum_mutation_source_num
                    list_randomization_rate.append(list_mutation_source_num[mutation_source_num_index][2])
                    list_randomization_source_line_index.append(list_mutation_source_num[mutation_source_num_index][0])
                # print(list_mutation_source_num)
                np.random.seed(random.randint(0, 999999))
                p = np.array(list_randomization_rate)

                if mutant_line_num > len(list_randomization_rate):
                    mutant_line_num = len(list_randomization_rate)

                list_choice_line_index = []
                now_choice_index = 0
                while now_choice_index < mutant_line_num:
                    choice_line_index = np.random.choice(list_randomization_source_line_index, p=p.ravel())
                    if choice_line_index in list_choice_line_index:
                        continue
                    list_choice_line_index.append(int(choice_line_index))
                    for mutation_source_num_index in range(len(list_mutation_source_num)):
                        if int(choice_line_index) == int(list_mutation_source_num[mutation_source_num_index][0]):
                            list_mutation_source_num[mutation_source_num_index][1] -= 1
                            sum_mutation_source_num -= 1
                            break
                    now_choice_index += 1
                list_choice_line_index.sort()
                # for choice_line_index in range(len(list_choice_line_index)):
                #     list_choice_line_index[choice_line_index] = str(list_choice_line_index[choice_line_index])
                hom_line_pair.append(list_choice_line_index)
                # f.write(",".join(list_choice_line_index))
                # if i != mutant_num_every_order - 1 or mutant_line_num != max_order_num:
                #     f.write("\n")
        return hom_line_pair

    def get_host_ip(self):
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(('8.8.8.8', 80))
        return s.getsockname()[0]

    def victor_bite(self, testcasespace, testcase):
        victor = []
        for i in range(len(testcasespace)):
            if testcasespace[i] == 1:
                victor.append(testcase[i])

        return victor


class Get_sus:

    # 计算mbfl方法怀疑度
    def Mbfl(self, data_json, parm={}):
        if not data_json:
            return False
        try:
            doc = list(data_json.keys())[0]
            data = data_json[doc]

            # 获取所需数据
            or_list = data["or_list"]
            line_len = data['linelen']
            Fault_Record = data["Fault_Record"]
            fom_list = data['fom_list']
            # hom_list_all = data['hom_list_all']
            hom_out_list = data['hom_out_list']
            sbfl_data = data["sbfl"]
            fomnum = len(fom_list)

            sus_data = dict()
            sus_data["Fault_Record"] = Fault_Record
            sus_data['totaltime'] = 0
            sus_data['fomnum'] = fomnum
            sus_data['homnum'] = 0
            sus_data['Desrcibe'] = dict()
            del data
        except Exception as e:
            print('数据缺失 %s' % e)
            return False
        parms = {'times': 1}
        parms.update(parm)

        # ------------------------------------------------
        # 计算一阶怀疑度
        fom_out_dic = dict()
        fom_kill_dic = dict()
        for fom in fom_list:
            fom_message = fom["message"][0]
            fom_out_list = fom["out_list"]
            fom_kill_list = fom["kill_list"]
            sus_data['totaltime'] += fom["time"]
            if fom_message[0] not in fom_out_dic:
                fom_out_dic[fom_message[0]] = []
                fom_kill_dic[fom_message[0]] = []
            fom_out_dic[fom_message[0]].append(fom_out_list)
            fom_kill_dic[fom_message[0]].append(fom_kill_list)
        touple = mbfl.command.GetTouleList(or_list, fom_out_dic, fom_kill_dic)

        for mbfl_for in for_list:
            # ------------------------------------------------
            # 约减测试用例
            if parms['yojian']:
                yojianFuc = parms['yojian'](data_json, parms['yojiantimes'], mbfl_for)
                newtouple = mbfl.command.GetTouleList(yojianFuc.retest(or_list),
                                                      yojianFuc.retest(fom_out_dic),
                                                      yojianFuc.retest(fom_kill_dic))
                sus_data['Desrcibe'][mbfl_for] = {'total': yojianFuc.total, 'real': yojianFuc.real}
            else:
                newtouple = touple
            sus_list_sort = mbfl.command.getsuslvalue(newtouple, mbfl_for, 'max')
            ranks = util.Evaluation().rank(sus_list_sort, Fault_Record, line_len)
            sus_data[('max', mbfl_for)] = util.get_rank_value(ranks, line_len)

        return sus_data

    # 计算mbfl方法怀疑度
    def Muse_mbfl(self, data_json, parm={}):
        if not data_json:
            return False
        try:
            doc = list(data_json.keys())[0]
            data = data_json[doc]
            del data_json

            # 获取所需数据
            or_list = data["or_list"]
            line_len = data['linelen']
            Fault_Record = data["Fault_Record"]
            fom_list = data['fom_list']
            fomnum = len(fom_list)

            sus_data = dict()
            sus_data["Fault_Record"] = Fault_Record
            sus_data['totaltime'] = 0
            sus_data['fomnum'] = fomnum
            sus_data['homnum'] = 0
            sus_data['Desrcibe'] = dict()
            del data
        except Exception as e:
            print('数据缺失 %s' % e)
            return False

        # ------------------------------------------------
        # 计算一阶怀疑度
        fom_out_dic = dict()
        fom_kill_dic = dict()
        for fom in fom_list:
            fom_message = fom["message"][0]
            fom_out_list = fom["out_list"]
            fom_kill_list = fom["kill_list"]
            sus_data['totaltime'] += fom["time"]
            if fom_message[0] not in fom_out_dic:
                fom_out_dic[fom_message[0]] = []
                fom_kill_dic[fom_message[0]] = []
            fom_out_dic[fom_message[0]].append(fom_out_list)
            fom_kill_dic[fom_message[0]].append(fom_kill_list)
        touple = mbfl.command.GetTouleList(or_list, fom_out_dic, fom_kill_dic)

        mbfl_for = 'muse'
        sus_list_sort = mbfl.command.getsuslvalue(touple, mbfl_for, 'ave')
        ranks = util.Evaluation().rank(sus_list_sort, Fault_Record, line_len)
        rankValue = util.get_rank_value(ranks, line_len)
        for mbfl_for in for_list:
            sus_data[('ave', mbfl_for)] = rankValue

        return sus_data

    # 计算sbfl方法怀疑度
    def Sbfl(self, data_json):
        if not data_json:
            return False
        try:
            doc = list(data_json.keys())[0]
            data = data_json[doc]
            del data_json

            # 获取所需数据
            or_list = data["or_list"]
            Fault_Record = data["Fault_Record"]
            sbfl_data = data["sbfl"]
            line_len = data['linelen']

            sus_data = dict()
            sus_data["Fault_Record"] = Fault_Record
            sus_data['totaltime'] = 0
            sus_data['fomnum'] = 0
            sus_data['homnum'] = 0
            sus_data['Desrcibe'] = dict()
            del data
        except Exception as e:
            print('数据缺失 %s' % e)
            return False

        # ------------------------------------------------
        # 计算sbfl怀疑度
        touple = sbfl.command.GetTouleList(or_list, sbfl_data['cov'])
        for sbfl_for in for_list:
            sus_list_sort = sbfl.command.getsuslvalue(touple, sbfl_for)
            ranks = util.Evaluation().rank(sus_list_sort, Fault_Record, line_len)
            sus_data[('none', sbfl_for)] = util.get_rank_value(ranks, line_len)

        sus_data['totaltime'] = sbfl_data['time']
        return sus_data

    # 计算sbfl方法怀疑度
    def Mcbfl(self, data_json, parm={}):
        if not data_json:
            return False
        try:
            doc = list(data_json.keys())[0]
            data = data_json[doc]

            # 获取所需数据
            or_list = data["or_list"]
            line_len = data['linelen']
            Fault_Record = data["Fault_Record"]
            fom_list = data['fom_list']
            hom_list_all = data['hom_list_all']
            sbfl_data = data["sbfl"]
            fomnum = len(fom_list)

            sus_data = dict()
            sus_data["Fault_Record"] = Fault_Record
            sus_data['totaltime'] = 0
            sus_data['fomnum'] = fomnum
            sus_data['homnum'] = 0
            sus_data['Desrcibe'] = dict()
            del data
        except Exception as e:
            print('数据缺失 %s' % e)
            return False
        parms = {}
        parms.update(parm)

        # ------------------------------------------------
        # 获取mbfl元组
        fom_out_dic = dict()
        fom_kill_dic = dict()
        for fom in fom_list:
            fom_message = fom["message"][0]
            fom_out_list = fom["out_list"]
            fom_kill_list = fom["kill_list"]
            if fom_message[0] not in fom_out_dic:
                fom_out_dic[fom_message[0]] = []
                fom_kill_dic[fom_message[0]] = []
            fom_out_dic[fom_message[0]].append(fom_out_list)
            fom_kill_dic[fom_message[0]].append(fom_kill_list)
        touple_mbfl = mbfl.command.GetTouleList(or_list, fom_out_dic, fom_kill_dic)

        # 获取sbfl元组
        touple_sbfl = sbfl.command.GetTouleList(or_list, sbfl_data['cov'])

        # 计算怀疑度
        for formula in for_list:
            # ------------------------------------------------
            # 约减测试用例
            if parms['yojian']:
                yojianFuc = parms['yojian'](data_json, parms['yojiantimes'], formula)
                new_touple_mbfl = mbfl.command.GetTouleList(yojianFuc.retest(or_list),
                                                            yojianFuc.retest(fom_out_dic),
                                                            yojianFuc.retest(fom_kill_dic))
                new_touple_sbfl = sbfl.command.GetTouleList(yojianFuc.retest(or_list),
                                                            yojianFuc.recov(sbfl_data['cov']))
                sus_data['Desrcibe'][formula] = {'total': yojianFuc.total, 'real': yojianFuc.real}
            else:
                new_touple_mbfl = touple_mbfl
                new_touple_sbfl = touple_sbfl

            sus_dic = dict()
            # 计算mbfl怀疑度
            sus_list_mbfl = mbfl.command.getsuslvalue(new_touple_mbfl, formula, 'max')
            for line, sus in sus_list_mbfl:
                sus_dic[line] = sus + -1

            # 计算sbfl怀疑度
            sus_list_sbfl = sbfl.command.getsuslvalue(new_touple_sbfl, formula)
            for line, sus in sus_list_sbfl:
                if line in sus_dic:
                    sus_dic[line] += sus + 1
                else:
                    sus_dic[line] = sus + -1

            sus_list = []
            for line, sus in sus_dic.items():
                sus_list.append([line, sus / 2])

            sus_list_sort = sorted(sus_list, key=lambda x: x[1], reverse=True)
            ranks = util.Evaluation().rank(sus_list_sort, Fault_Record, line_len)
            sus_data[('max', formula)] = util.get_rank_value(ranks, line_len)

        return sus_data

    # 使用高阶NS-Delta 和 mbfl-Delta
    def DeltaNsMbfl(self, data_json, parm={}):
        if not data_json:
            return False
        try:
            doc = list(data_json.keys())[0]
            data = data_json[doc]

            # 获取所需数据
            or_list = data["or_list"]
            line_len = data['linelen']
            Fault_Record = data["Fault_Record"]
            fom_list = data['fom_list']
            fomnum = len(fom_list)
            hom_out_list = data['hom_out_list']
            sbfl_data = data["sbfl"]

            sus_data = dict()
            sus_data["Fault_Record"] = Fault_Record
            sus_data['totaltime'] = 0
            sus_data['fomnum'] = fomnum
            sus_data['homnum'] = 0
            sus_data['Desrcibe'] = dict()
            del data
        except Exception as e:
            print('数据缺失 %s' % e)
            return False
        parms = {'times': 1}
        parms.update(parm)

        def NsRule(message1, meggage2):
            if not message1[0] == meggage2[0]:
                return True
            elif message1[3] == 'delet' or meggage2[3] == 'delet':
                return False
            elif not message1[3] == meggage2[3] or \
                    (message1[5] < meggage2[5] < message1[5] + len(message1[3])) or \
                    (meggage2[5] < message1[5] < meggage2[5] + len(meggage2[3])):
                return True
            else:
                return False

        # ------------------------------------------------
        # 计算一阶touple
        fom_out_dic = dict()
        fom_kill_dic = dict()
        for fom in fom_list:
            fom_message = fom["message"][0]
            fom_out_list = fom["out_list"]
            fom_kill_list = fom["kill_list"]
            if fom_message[0] not in fom_out_dic:
                fom_out_dic[fom_message[0]] = []
                fom_kill_dic[fom_message[0]] = []
            fom_out_dic[fom_message[0]].append(fom_out_list)
            fom_kill_dic[fom_message[0]].append(fom_kill_list)

        # ------------------------------------------------
        # 计算二阶ns touple
        hom_list_simple = list(map(lambda x: sorted(x['message'], key=lambda y: y[0]), hom_out_list))

        fom_lines_dic = dict()
        for fom in fom_list:
            line = fom['message'][0][0]
            if line not in fom_lines_dic:
                fom_lines_dic[line] = []
            fom_lines_dic[line].append(fom)

        hom_lines_dic = dict()
        tnum = 0
        for line, fom_list_indic in fom_lines_dic.items():
            hom_lines_dic[line] = []
            for i1, fom1 in enumerate(fom_list_indic):
                for i2, fom2 in enumerate(fom_list_indic):
                    if i1 >= i2:
                        continue
                    if not NsRule(fom1['message'][0], fom2['message'][0]):
                        continue
                    som = sorted([fom1['message'][0], fom2['message'][0]], key=lambda x: x[0])
                    if som in hom_list_simple:
                        loc = hom_list_simple.index(som)
                        hom_lines_dic[line].append(hom_out_list[loc])
                        tnum += 1

        powerlist = list(map(lambda x: [x[0], len(x[1]) * fomnum * parms['times'] / tnum], hom_lines_dic.items()))
        powerlist_sorted = sorted(powerlist, key=lambda x: x[0])

        def getDNmuts():
            out_dic = dict()
            kill_dic = dict()
            resnum = 0
            for line, neednum in powerlist_sorted:
                resnum += neednum
                if line not in hom_lines_dic:
                    continue
                hom_lines = hom_lines_dic[line]
                for hom in random.sample(hom_lines, min(math.ceil(resnum), len(hom_lines))):
                    for fom_in_hom in hom['message']:
                        line = fom_in_hom[0]
                        if line not in out_dic:
                            out_dic[line] = []
                            kill_dic[line] = []
                        out_dic[line].append(hom['out_list'])
                        kill_dic[line].append(hom['kill_list'])
                    resnum -= 1
                    sus_data['homnum'] += 1

            if parms['times'] == 1000:
                return out_dic, kill_dic

            resnum = math.ceil(resnum)
            while resnum > 0:
                for line, neednum in powerlist_sorted:
                    if line not in hom_lines_dic:
                        continue
                    hom_lines = hom_lines_dic[line]
                    for hom in random.sample(hom_lines, min(math.ceil(resnum), len(hom_lines))):
                        for fom_in_hom in hom['message']:
                            line = fom_in_hom[0]
                            if line not in out_dic:
                                out_dic[line] = []
                                kill_dic[line] = []
                            out_dic[line].append(hom['out_list'])
                            kill_dic[line].append(hom['kill_list'])
                        resnum -= 1
                        sus_data['homnum'] += 1
                        if resnum <= 0:
                            return out_dic, kill_dic
            return out_dic, kill_dic

        out_dic, kill_dic = getDNmuts()

        # ------------------------------------------------
        # 计算怀疑度
        for mbfl_for in for_list:
            # ------------------------------------------------
            # 约减测试用例
            if parms['yojian']:
                yojianFuc = parms['yojian'](data_json, parms['yojiantimes'], mbfl_for)
                new_touple_mbfl = mbfl.command.GetTouleList(yojianFuc.retest(or_list),
                                                            yojianFuc.retest(fom_out_dic),
                                                            yojianFuc.retest(fom_kill_dic))
                new_touple_ns = mbfl.command.GetTouleList(yojianFuc.retest(or_list),
                                                          yojianFuc.retest(out_dic),
                                                          yojianFuc.retest(kill_dic))
                sus_data['Desrcibe'][mbfl_for] = {'total': yojianFuc.total, 'real': yojianFuc.real}

            else:
                new_touple_mbfl = mbfl.command.GetTouleList(or_list, fom_out_dic, fom_kill_dic)
                new_touple_ns = mbfl.command.GetTouleList(or_list, out_dic, kill_dic)

            for word in ['max', 'ave', 'frequency']:
                sus_list_T = dict()

                sus_list_mbfl = mbfl.command.getsuslvalue(new_touple_mbfl, mbfl_for, 'frequency')
                for line, sus in sus_list_mbfl:
                    sus_list_T[line] = sus

                sus_list_ns = mbfl.command.getsuslvalue(new_touple_ns, mbfl_for, word)
                for line, sus in sus_list_ns:
                    if not type(sus) == list:
                        format_sus = [sus]
                    else:
                        format_sus = sus
                    if line in sus_list_T:
                        sus_list_T[line] += format_sus
                    else:
                        sus_list_T[line] = format_sus

                sus_list = []
                mbfl.mbfl_for.type_mbfl = word
                for line, T_list in sus_list_T.items():
                    sus_list.append([line, mbfl.mbfl_for.select_type(T_list)])

                sus_list_sort = sorted(sus_list, key=lambda x: x[1], reverse=True)
                ranks = util.Evaluation().rank(sus_list_sort, Fault_Record, line_len)
                sus_data[(word, mbfl_for)] = util.get_rank_value(ranks, line_len)
        return sus_data
