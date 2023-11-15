import pandas as pd
import os
import util


"""似乎是用来读取结果的"""
# 编辑codeflaws版本信息
global head
head = ['version', 'realfault', 'defect_compile', 'true_compile', 'require', ]

s = ['v1546', 'v1547', 'v1548', 'v1549', 'v1550', 'v1551', 'v1552', 'v1553', 'v1555', 'v1556', 'v1562', 'v1564',
     'v1568', 'v1569', 'v1570', 'v1572', 'v1574', 'v1575', 'v1576', 'v1577', 'v1579', 'v1580', 'v1582', 'v1583',
     'v1584', 'v1585', 'v1588', 'v1589', 'v1590', 'v1591', 'v1592', 'v1593', 'v1594', 'v1595', 'v1597', 'v1600',
     'v1602', 'v1603', 'v1605', 'v1606', 'v1607', 'v1608', 'v1613', 'v1616', 'v1618', 'v1620', 'v1621', 'v1622',
     'v1623', 'v1624', 'v1627', 'v1628', 'v1631', 'v1637', 'v1645', 'v1648', 'v1651', 'v1653', 'v1654', 'v1658',
     'v1660', 'v1661', 'v1662', 'v1664', 'v1665', 'v1666', 'v1668', 'v1670', 'v1674', 'v1675', 'v1676', 'v1680',
     'v1684', 'v1690', 'v1691', 'v1693', 'v1694', 'v1695', 'v1698', 'v1699', 'v1700', 'v1701', 'v1702', 'v1703',
     'v1709', 'v1712', 'v1713', 'v1714', 'v1715', 'v1718', 'v1719', 'v1720', 'v1721', 'v1722', 'v1723', 'v1724',
     'v1727', 'v1731', 'v1733', 'v1734', 'v1737', 'v1739', 'v1741', 'v1742', 'v1743', 'v1746', 'v1750', 'v1752',
     'v1754', 'v1755', 'v1756', 'v1759']


def readxlsx(path, sheet):
    try:
        data_read = Qr_excel().read(path, sheet)
    except:
        print('读取失败 %s %s' % (path, sheet))
        return False
    static_all = {
        'totalfaultnum': 0,
        'ttime': 0,
        'fomnum': 0,
        'homnum': 0,
        'Operator': [0 for _ in range(13)],
        'Accurate': [0 for _ in range(3)],
        'versionnum': len(data_read)-1,
        'form': dict()
    }
    for i in range(len(data_read)):
        row_data = data_read[i]
        for key, value in row_data['self'].items():
            if value == '':
                continue
            if key == 'Fault_Record':
                static_all['totalfaultnum'] += int(value)
            elif key == 'TimeSpend':
                static_all['ttime'] += int(value)
            elif key == 'Fomnum':
                try:
                    static_all['fomnum'] += int(value)
                except:
                    print(row_data['self'])
            elif key == 'Homnum':
                static_all['homnum'] += int(value)
            elif 'Operator' in key:
                OperatorType = int(key.split(' ')[2])
                static_all['Operator'][OperatorType] = static_all['Operator'][OperatorType] + value*100
            elif 'Accurate' in key:
                if key == 'None Accurate':
                    static_all['Accurate'][0] += value*100
                if key == 'Pare Accurate':
                    static_all['Accurate'][1] += value*100
                if key == 'Accurate':
                    static_all['Accurate'][2] += value*100
        for key, value in row_data['form'].items():
            if key not in static_all['form']:
                static_all['form'][key] = {
                    'exam': 0,
                    # 'exams': dict(),
                    'exams': [],
                    'maps': [],
                    'ranks': [],
                    'rank': [0 for _ in range(4)],
                    'map': 0,
                }
            for j in range(len(row_data['form'][key]['exam'])):
                exam = row_data['form'][key]['exam'][j]
                rank = row_data['form'][key]['rank'][j]
                static_all['form'][key]['exam'] += exam
                # if j == 0:
                #     static_all['form'][key]['exams'][row_data['self']['Version']] = [exam]
                # else:
                #     static_all['form'][key]['exams'][row_data['self']['Version']].append(exam)
                static_all['form'][key]['exams'].append(exam)
                static_all['form'][key]['maps'].append(1/rank)
                static_all['form'][key]['ranks'].append(rank)
                # static_all['form'][key]['exams'].append(exam)
                static_all['form'][key]['map'] += 1/rank
                if rank <= 1:
                    static_all['form'][key]['rank'][0] += 1
                if rank <= 3:
                    static_all['form'][key]['rank'][1] += 1
                if rank <= 5:
                    static_all['form'][key]['rank'][2] += 1
                if rank <= 10:
                    static_all['form'][key]['rank'][3] += 1

    static_all['fomnum'] = static_all['fomnum']/static_all['versionnum']
    static_all['homnum'] = static_all['homnum']/static_all['versionnum']
    for i in range(13):
        static_all['Operator'][i] = static_all['Operator'][i]/static_all['versionnum']
    for i in range(3):
        static_all['Accurate'][i] = static_all['Accurate'][i]/static_all['versionnum']
    for fun in static_all['form'].keys():
        if static_all['totalfaultnum'] == 0:
            static_all['form'][fun]['exam'] = 0
            static_all['form'][fun]['map'] = 0
        else:
            static_all['form'][fun]['exam'] = static_all['form'][fun]['exam']/static_all['totalfaultnum']
            static_all['form'][fun]['map'] = static_all['form'][fun]['map']/static_all['versionnum']

    return static_all


class Qr_excel:
    def file_data_read(self, path, sheet, head=[0, 1]):
        if sheet == '':
            df = pd.read_excel(path, header=head)
        else:
            df = pd.read_excel(path, sheet_name=sheet, header=head)
        df.fillna("", inplace=True)
        return df

    def read(self, path, sheet):
        df = self.file_data_read(path, sheet)
        title = list(df.columns.values)
        name = title[0][0]
        data = []
        for i in df.index.values:
            row_data_read = df.loc[i, df.columns.values].to_dict()
            row_data = {
                'self': dict(),
                'form': dict(),
            }
            for keys, value in row_data_read.items():
                if keys[0] == name:
                    row_data['self'][keys[1]] = value
                else:
                    if keys[0] not in row_data['form']:
                        row_data['form'][keys[0]] = {
                            'exam': [],
                            'rank': [],
                        }
                    if value == '':
                        continue
                    if 'exam' in keys[1]:
                        row_data['form'][keys[0]]['exam'].append(value)
                    if 'rank' in keys[1]:
                        row_data['form'][keys[0]]['rank'].append(value)
            data.append(row_data)
        return data

    def read_old(self, path, sheet):
        if sheet == '':
            df = pd.read_excel(path)
        else:
            df = pd.read_excel(path, sheet_name=sheet)
        date = df.values
        return date

    def save(self, path, sheet, date):
        write = pd.ExcelWriter(path)
        date_frame = pd.DataFrame(date)
        if sheet == '':
            date_frame.to_excel(write, index=False, header=head)
        else:
            date_frame.to_excel(write, sheet_name=sheet, index=False, header=head)
        write.save()
        write.close()


def compile_able(src_path, name):
    true_com = util.Command(src_path)
    # 编译文件
    if not Codeflaws().mysystem(true_com.compile(name)):
        print('编译错误', src_path)
        return False
    return True


def get_realfault(path):
    # 获取真实故障
    try:
        Fault_Record = []
        with open(os.path.join(path, 'defect_root', 'Fault_Record.txt'), 'r') as f:
            text = f.read()
            for items in text.split('Line'):
                try:
                    Fault_Record.append(int(items))
                except:
                    continue
    except:
        return []
    return Fault_Record


def main_creat():
    path = 'report/data_codeflaws.xlsx'
    vdata = [[], [], []]  # 单故障 多故障 无法读取
    for v in os.listdir('./cdata/version'):
        if '.' in v:
            continue
        Fault_Record = get_realfault(os.path.join('./cdata/version', v, 'test_data'))
        lists = ['' for i in range(len(head))]
        lists[0] = v
        lists[1] = Fault_Record

        if Fault_Record == []:
            vdata[2].append(lists)
        elif len(Fault_Record) == 1:
            vdata[0].append(lists)
        else:
            vdata[1].append(lists)

    write = pd.ExcelWriter(path)
    for i in range(3):
        data = pd.DataFrame(vdata[i])
        if i == 0:
            data.to_excel(write, sheet_name='single', index=False, header=head)
        elif i == 1:
            data.to_excel(write, sheet_name='muti', index=False, header=head)
        elif i == 2:
            try:
                data.to_excel(write, sheet_name='error', index=False, header=head)
            except:
                continue
    write.save()
    write.close()
    print('生成成功')


def creat():
    src = os.path.join(os.getcwd(), 'cdata', 'version')
    path = 'report/data_codeflaws.xlsx'
    vdata = [[], [], []]  # 单故障 多故障 无法读取
    for doc in os.listdir('./cdata/version'):
        if '.' in v:
            continue
        Fault_Record = get_realfault(os.path.join('./cdata/version', v, 'test_data'))
        lists = ['' for i in range(len(head))]
        lists[0] = doc
        lists[1] = Fault_Record

        src_doc = os.path.join(src, doc, 'test_data')  # 题目大版本路径
        src_true = os.path.join(src_doc, 'true_root', 'source', 'tcas.c')  # 正确程序路径
        src_or = os.path.join(src_doc, 'defect_root', 'source', 'tcas.c')  # 故障程序路径

        if compile_able('tcas', src_or):
            lists[2] = 1
        else:
            lists[2] = 0

        if compile_able('tcas', src_or):
            lists[3] = 1
        else:
            lists[3] = 0

        if doc in s:
            lists[4] = 1
        else:
            lists[4] = 0

        if Fault_Record == []:
            vdata[2].append(lists)
        elif len(Fault_Record) == 1:
            vdata[0].append(lists)
        else:
            vdata[1].append(lists)

    write = pd.ExcelWriter(path)
    for i in range(3):
        data = pd.DataFrame(vdata[i])
        if i == 0:
            data.to_excel(write, sheet_name='single', index=False, header=head)
        elif i == 1:
            data.to_excel(write, sheet_name='muti', index=False, header=head)
        elif i == 2:
            try:
                data.to_excel(write, sheet_name='error', index=False, header=head)
            except:
                continue
    write.save()
    write.close()
    print('生成成功')


if __name__ == '__main__':
    main_creat()
