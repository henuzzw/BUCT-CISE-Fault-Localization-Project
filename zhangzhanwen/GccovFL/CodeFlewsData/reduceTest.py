class Reduce:
    def sbflPowerReduce(self, data_json):
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
            # hom_list_all = data['hom_list_all']
            hom_out_list = data['hom_out_list']
            sbfl_data = data["sbfl"]
            fomnum = len(fom_list)

            sus_data = dict()
            sus_data["Fault_Record"] = Fault_Record
            sus_data['totaltime'] = 0
            sus_data['fomnum'] = fomnum
            sus_data['homnum'] = 0
            sus_data['Desrcibe'] = ''
            del data
        except Exception as e:
            print('数据缺失 %s' % e)
            return False