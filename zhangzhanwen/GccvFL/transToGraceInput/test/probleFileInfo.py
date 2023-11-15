problem = {
        "pwd":"/home/*/problem",
        "id":1,
        "inList": [],
        'fileId':[],
        "fileList":[
            # "file1":
                {
                "id":11,
                "pwd":"/home/*/problem/file1Name",
                 "result":[ True,False,True,False],
                'lineId':[{
                    'id': tempLine[1],
                    'code': tempLine[2].rstrip('\n'),
                    'type': '还没完成',
                    'lineNum': tempLine[1]
                }],
                "maxi":["lineId"]["testId"], # 这里要给出是否被覆盖

                "funcList":[
                    {
                        "pwd":"/home/*/proble/file1Name",
                        "id": 111,
                        "startLine":3,
                        "Name": "int main()",
                        "endLine":20,
                    }
                ],
            },

        ],


    }