# import ijson
import math
import random

import sbfl.sbfl_for
import sbfl.command


# 测试用例约减
class RetestAlternate:
    def __init__(self, alternative, IETCR=False):
        self.alternate = alternative
        self.IETCR = IETCR
        self.total = len(self.alternate)
        self.real = sum(self.alternate)

    def retest(self, execution):
        if self.IETCR:
            return self.cov2fail(execution)
        else:
            return self.del2fail(execution)

    # 覆盖替换失败测试用例
    def cov2fail(self, execution):
        if type(execution) == dict:
            newexecution = {}
            for key, value in execution.items():
                newexecution[key] = self.cov2fail(value)
        else:
            newexecution = []
            if type(execution[0]) == int:
                for i, res in enumerate(execution):
                    if self.alternate[i]:
                        newexecution += [res]
                    else:
                        newexecution += [1]
            else:
                for reslist in execution:
                    newexecution.append(self.cov2fail(reslist))
        return newexecution

    # 筛选测试用例
    def del2fail(self, execution):
        if type(execution) == dict:
            newexecution = {}
            for key, value in execution.items():
                newexecution[key] = self.retest(value)
        else:
            newexecution = []
            if type(execution[0]) == int:
                for i, res in enumerate(execution):
                    newexecution += [res]*self.alternate[i]
            else:
                for reslist in execution:
                    newexecution.append(self.retest(reslist))
        return newexecution

    # 筛选测试用例覆盖
    def recov(self, execution):
        newexecution = []
        for i in range(len(self.alternate)):
            if self.alternate[i]:
                newexecution.append(execution[i])
        return newexecution


# Contribution-based Test Case Reduction strategy
def CTCR_yojian(data_json, times, formula):
        doc = list(data_json.keys())[0]
        data = data_json[doc]
        or_list = data["or_list"]
        testsCov = data["sbfl"]['cov']
        sus_list = dict()
        alternate = [0 for i in range(len(or_list))]

        touple = sbfl.command.GetTouleList(or_list, testsCov)
        for line, touple_list in touple.items():
            sus = sbfl.sbfl_for.Tarantula(touple_list)
            sus_list[line] = sus

        testContribution = []
        for i, testCov in enumerate(testsCov):
            contribution = 0
            for cov in testCov:
                if cov not in sus_list:
                    continue
                contribution += sus_list[cov]
            testContribution.append([i, contribution])

        testContribution = sorted(testContribution, key=lambda x: x[1], reverse=True)
        needlist = []
        for i in range(0, math.ceil(len(testsCov)*times)):
            needlist.append(testContribution[i][0])

        for i in needlist:
            alternate[i] += 1

        return RetestAlternate(alternate)


# IETCR
def IETCR_yojian(data_json, times, formula):

    def getEt(suslindic):
        minsus = 0.1e-301
        SumsusST = 0
        for line, sus in suslindic.items():
            SumsusST += max(sus, minsus)
        PTS = dict()
        for line, sus in suslindic.items():
            PTS[line] = max(sus, minsus)/SumsusST
        ETP = 0
        for line, sus in PTS.items():
            ETP += max(sus, minsus)*math.log(max(sus, minsus), 2)
        return -1*ETP

    doc = list(data_json.keys())[0]
    data = data_json[doc]
    or_list = data["or_list"]
    testsCov = data["sbfl"]['cov']

    alternate = [0 for i in range(len(or_list))]
    for (index, item) in enumerate(or_list):
        if not item:
            alternate[index] = 1
    needaddnum = max([0, math.ceil(len(or_list)*times)-sum(alternate)])

    EC = []
    susST = sbfl.command.getbflvalue(or_list, testsCov, formula)
    ET = getEt(susST)
    for i in range(len(or_list)):
        if not or_list[i]:
            continue
        t_alternate = [1 for i in range(len(or_list))]
        t_alternate[i] = 0
        space = RetestAlternate(t_alternate)
        susSTi = sbfl.command.getbflvalue(space.retest(or_list), space.recov(testsCov), formula)
        EC.append([i, ET - getEt(susSTi)])

    EC = sorted(EC, key=lambda x: x[1])
    for i in range(needaddnum):
        alternate[EC[i][0]] = 1
    return RetestAlternate(alternate)


# RANDOM
def RANDOM_yojian(data_json, times, formula):
    doc = list(data_json.keys())[0]
    data = data_json[doc]
    or_list = data["or_list"]
    or_list_index = [i for i in range(len(or_list))]
    alternate = [0 for i in range(len(or_list))]

    for (index, item) in enumerate(or_list):
        if not item:
            alternate[index] = 1
            or_list_index.pop(or_list_index.index(index))
    while sum(alternate) < math.ceil(len(or_list)*times):
        index = random.sample(or_list_index, 1)[0]
        or_list_index.pop(or_list_index.index(index))
        alternate[index] = 1

    return RetestAlternate(alternate)


# FRMES
def FRMES_yojian(data_json, times, formula):
    doc = list(data_json.keys())[0]
    data = data_json[doc]

    or_list = data["or_list"]
    alternate = [0 for i in range(len(or_list))]
    for (index, item) in enumerate(or_list):
        if not item:
            alternate[index] = 1

    return RetestAlternate(alternate, True)





