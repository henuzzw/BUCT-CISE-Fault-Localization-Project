import subprocess

import clang.cindex
import sys


# # 递归遍历AST
# class Node:
#     def __init__(self, id, children, parent, line, column):
#         self.id = id
#         self.children = children
#         self.parent = parent
#         self.line = line
#         self.column = column
#
#     def add_child(self, child_node):
#         if isinstance(child_node, Node):
#             self.children.append(child_node)
#             child_node.parent = self
#         else:
#             raise ValueError("Invalid child node. Must be of type Node.")
fileNameAll = ""
def traverse(node, mynode):
    # 打印节点类型和拼写
    # print("Node Type: {}".format(node.kind))
    # print("Spelling: {}".format(node.spelling))

    # 打印节点的位置信息
    # 遍历子节点
    location = node.location
    mynode['line'] = location.line
    for child in node.get_children():
        tempchild = {
            'parent': mynode['line'],
            'line': 1,
            'type': [],
            'children': [],
        }
        tempchild = traverse(child, tempchild)
        if tempchild != -1:
            if tempchild['line'] == mynode['line']:
                mynode['type'].extend(tempchild['type'])
                mynode['children'].extend(tempchild['children'])
            else:
                tempchild['parent'] = mynode['line']
                mynode['children'].append(tempchild)

    if type(location) is not None:
        # print(location, "   --------location")
        # print(location.file, "   --------location.file")
        # print(type(location.file), "   --------type(location.file)")
        if type(location.file) is not type(None):
            # if location.file.name == fileNameAll:
            mynode['fileName'] = fileNameAll
            # else:
            #     print(" ----------------------------- --- -----------------  - - - - ")
            #     return -1
        if type(location.line) is not None:
            mynode['line'] = location.line
        mynode['type'].append(node.kind.name)
    return mynode


def dfs(root, res,allLineType):
    for i, item in enumerate(root):
        res[item['line']-1] = {
            'parent': item['parent'],
            'line': item['line']-1,
            'type':item['type'],
            'children': [],
            'fileName': item['fileName']
        }
        for types in item['type']:
            # if types not in item['type']:
            allLineType.append(types)
        if type(item ) is not None and type(item['children']) is not None:
            dfs(item['children'], res,allLineType)

def getCppASTByLibClang(fileName):
    # print(fileName)
    fileNameAll = fileName
    # getPath = subprocess.Popen("pwd ", shell=True )
    # getPath.wait()


    index = clang.cindex.Index.create()
    translation_unit = index.parse(fileName)
    # 遍历根节点
    mynode = {
        'parent': 'root',
        'line': 1,
        'type': ['root'],
        'children': [],
        'flag': []
    }
    traverse(translation_unit.cursor, mynode)
    # print(mynode," --- mynode")
    # print(fileName)
    res = {}
    allLineType=[]
    dfs(mynode['children'], res,allLineType)
    return res,allLineType

if __name__ == '__main__':
    # 创建Index和TranslationUnit
    getCppASTByLibClang(sys.argv[1],[])

    # print(mynode)
