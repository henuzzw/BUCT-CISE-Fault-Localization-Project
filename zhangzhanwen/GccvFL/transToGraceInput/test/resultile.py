
# 解析一段示例代码
source = r""" 
 int main()
{
    float a,b,area;
    scanf("%f%f",&a,&b);
    cin>>a;
    area = (a*b)/2;
    if(area>0)
    {
        printf("The area of (%.4f,%.4f), (%.4f,0) and (0,%.4f) is %.4f.",a,b,a,b,area);
    }
    else
    {
        printf("The area of (%.4f,%.4f), (%.4f,0) and (0,%.4f) is %.4f.",a,b,a,b,(-1)*area);
    } 
    return 0;
}
"""

source2 = r"""
int main2()
{
    //to determine sign of a number
    float n;
    scanf("%f",&n);
    if(n>0)
    {
        printf("%.4f is positive,%n");//number is positive
    }
    else
    {
        if (n==0)
        {
            printf("input is zero");//number is 0
        }
        else
        {
            printf("%.4f is negative,%n");
        }
    }//number is negative

    return 0;
}
"""
# 导入pycparser模块
from pycparser import c_parser, c_ast
import sys
# 定义一个递归遍历AST节点并打印节点类型和位置信息的函数
def print_node_type_and_location(node):
    # 如果节点是c_ast.Node对象（所有节点都是）
    if isinstance(node, c_ast.Node):
        # 打印节点类型和位置信息
        print(f"Found a {type(node).__name__} at {node.coord}")
        # print(node.coord,type(node))
        # 遍历节点的所有子节点
        for child in node.children():
            # 递归调用本函数

            print_node_type_and_location(child[1])

# 创建一个c_parser对象
parser = c_parser.CParser()

ast = parser.parse(source)
# 调用打印函数
print_node_type_and_location(ast)

print("\n\n\n")

parser = c_parser.CParser()
print_node_type_and_location(parser.parse(source2))

# # 导入pycparse_cpp模块
# import pycparser as pcpp
# # 创建一个C++解析器对象
# # parser = pcpp.parse_file()
#
# # 解析一个C++文件，返回一个AST对象
# print(sys.argv)
#
# # 定义一个函数，用于遍历AST并查找函数定义和调用
# def find_functions(node):
#     # 如果节点是一个函数定义，打印出函数名和参数列表
#     if isinstance(node, pcpp.c_ast.FuncDef):
#         print(f"Function definition: {node.decl.name}({', '.join(p.name for p in node.decl.type.args.params)})")
#     # 如果节点是一个函数调用，打印出函数名和实参列表
#     elif isinstance(node, pcpp.c_ast.FuncCall):
#         print(f"Function call: {node.name.name}({', '.join(p.value for p in node.args.exprs)})")
#     # 递归遍历节点的所有子节点
#     for child in node:
#         find_functions(child)
#
# # 调用find_functions函数，传入AST的根节点
# find_functions(ast)