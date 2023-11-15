"""
这是为了提取cpp的控制流图，这里带有行号
主要分为一下几个部分，
1， 接口函数，用于被外部函数调用
2， 解析函数的行号
3， 解析出函数的行号后，开始进行解析此函数中的控制流图
4，
"""
import re
import subprocess
import sys
# sys.path.append()
# import Setting


class ControlFlowGraph:
    def getCppCFG(self, filePath, methods):
        # print(" ----------------------------------------------------------------------------------------------------")
        # print(filePath ," ------filePath")
        # print(methods, " ------methods")

        # 获取编译信息
        compilerInfo = self.getCompilerInfo(filePath )
        # 截取当前文件的路径跳转信息 lineList = [ (line, column) ]
        lineList = self.parse_debug_info(compilerInfo)
        # 根据methods中函数的开始行号和结束行号，确定函数内部的控制流图，并返回
        # print(self.getCFG(lineList, methods))
        return self.getCFG(lineList, methods)
        # print(lineList)
    def getCFG(self, lineList, methods):
        filtered_data = []
        for index,method in enumerate(methods):
            start_line = method["startLine"]
            end_line = method["endLine"]
            pre_line = start_line
            for line, column in lineList:

                if start_line < line <= end_line and line is not pre_line:
                    filtered_data.append((pre_line, line))
                    pre_line = line
        return filtered_data
    def parse_debug_info(self , debug_info):
        result = []
        # 使用正则表达式匹配行号和列号
        pattern = r"line: (\d+), column: (\d+)"
        matches = re.finditer(pattern, debug_info)
        for match in matches:
            line = int(match.group(1))-1
            column = int(match.group(2))
            result.append((line, column))
        # print(result)
        return result
    """
    filePath : "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1335/505536_buggy.c"
         "methods": [
        {
          "pwd": "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1335/505536_buggy.c",
          "id": 0,
          "startLine": 5,
          "endLine": 26,
          "name": "int main()"
        }
      ],
    """

    def getCompilerInfo(self, filePath ):
        c1_str = f"clang++-6.0  -emit-llvm -S  -g -o- {filePath} "
        process = subprocess.Popen(c1_str, stdin=None, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
        stdout = ""
        flag = False
        fileNum = False

        for line in process.stdout:
            theLine = line.decode("utf-8")
            if flag:
                stdout+=line.decode("utf-8")
                if "scope: " + fileNum + ", file: "+fileNum in theLine:
                    flag = False
            if not fileNum and  "!DIFile(filename: \""+filePath in theLine:
                fileNum = theLine.split(" ")[0]
            if fileNum and "scope: "+fileNum+"," in theLine:
                flag = True

        process.wait()
        # print(stdout)
        # stdout, stderr = process.communicate()
        return stdout
if __name__ == "__main__":
    cfg = ControlFlowGraph()
    file_path = "../ITSP-data/1335/WA_c/505536_buggy.c"
    print("开始提取",file_path)
    funs = [
        {
            "pwd": "/home/bhxz/ForGraduate/ForGccvFL2.0/transToGraceInput/ITSP-data/1335/505536_buggy.c",
            "id": 0,
            "startLine": 3,
            "endLine": 36,
            "name": "int main()"
        }
      ]
    res = cfg.getCppCFG(file_path, funs)
    print(res)
