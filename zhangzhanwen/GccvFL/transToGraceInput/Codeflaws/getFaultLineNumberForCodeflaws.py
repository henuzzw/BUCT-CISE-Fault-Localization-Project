import os.path
import shutil

from tqdm import tqdm

import common


# 基于动态规划的语句错误行定位
# 因为codeflaws没有提供具体的错误行的行号，但是基于抽样观察，我们发现一对程序(正确程序，错误程序)之间的代码几近相似，维度错误之处不同，所以我们使用动态规划实现错误程序到正确程序的编辑距离定位错误语句
# dp[i][j][0]
# dp[i][j][1]
# dp[i][j][2]
# dp[i][j][3]
# dp[i][j][4]错误程序的前j行，编辑成正确程序的前i行的最小编辑距离
# dp[i][j][5]错误程序的第j行，编辑成正确程序的第i行的最小编辑距离的编辑方式（增删改）


def dpFaultNumber(path, path1, path2,file11,file21):
    file1 = read(path1)
    file2 = read(path2)
    len1 = len(file1)
    len2 = len(file2)

    # 初始化三维数组
    dp = [[[0 for _ in range(6)] for _ in range(len2)] for _ in range(len1)]

    for i in range(len1):
        for j in range(len2):
            if i == 0 and j == 0:
                continue  # 跳过第一个元素，因为它没有左上角的元素
            # 处理左上角元素
            if i > 0 and j > 0:
                if file1[i] == file2[j]:
                    dp[i][j][0] = min(dp[i - 1][j - 1][4], dp[i - 1][j][4] + 1, dp[i][j - 1][4] + 1)
                    dp[i][j][4] = dp[i][j][0]
                    dp[i][j][5] = 0
                else:
                    dp[i][j][1] = dp[i - 1][j - 1][4] + 1
                    dp[i][j][2] = dp[i - 1][j][4] + 1
                    dp[i][j][3] = dp[i][j - 1][4] + 1
                    if dp[i][j][1] < dp[i][j][2]:
                        if dp[i][j][1] < dp[i][j][3]:
                            dp[i][j][5] = 1
                        else:
                            dp[i][j][5] = 3
                    elif dp[i][j][2] < dp[i][j][3]:
                        dp[i][j][5] = 2
                    else:
                        dp[i][j][5] = 3
                    dp[i][j][4] = min(dp[i][j][1], dp[i][j][2], dp[i][j][3])

            # 处理第一行元素
            elif i == 0 and j > 0:
                dp[i][j][3] = dp[i][j - 1][4] + 1
                dp[i][j][5] = 3
                dp[i][j][4] = dp[i][j][3]

            # 处理第一列元素
            elif i > 0 and j == 0:
                dp[i][j][2] = dp[i - 1][j][4] + 1
                dp[i][j][5] = 2
                dp[i][j][4] = dp[i][j][2]

    # 输出dp矩阵，可以根据实际情况选择是否需要
    # for row in dp:
    #     print(row)

    # 获取编辑过程
    i, j = len1 - 1, len2 - 1
    operations = []
    faultLines = []
    while i > 0 or j > 0:
        op_type = dp[i][j][5]
        if op_type == 0:  # 不需要额外操作
            i -= 1
            j -= 1
        elif op_type == 1:  # 替换
            operations.append((f"Replace {file1[i]} with {file2[j]} at position {i + 1}", i))
            faultLines.append(j)
            i -= 1
            j -= 1
        elif op_type == 2:  # 插入
            operations.append((f"Insert {file1[i]} at position {i + 1} in file2", i))
            i -= 1
            faultLines.append(j)
        elif op_type == 3:  # 删除
            operations.append((f"Delete {file2[j]} at position {i + 1} in file2", i))
            faultLines.append(j)
            j -= 1

    # 处理剩余的元素
    while i > 0:
        operations.append((f"Insert {file1[i]} at the beginning of file2", i))
        i -= 1
    while j > 0:
        operations.append((f"Delete {file2[j]} at the beginning of file2", i))
        faultLines.append(j)
        j -= 1

    # 反转编辑操作列表，以便按编辑顺序输出
    operations.reverse()
    faultLines.reverse()
    # print("编辑过程：")
    dp[len1 - 1][len2 - 1][4]
    write_to_file_in_path(path, path1, path2, faultLines, str(operations))
    move_files_to_folders(path, file11, file21)

def move_files_to_others(target_dir, prefixes_to_move):
    # 创建目标文件夹
    others_dir = os.path.join(target_dir, 'others')
    os.makedirs(others_dir, exist_ok=True)

    # 获取当前目录下所有文件和文件夹的列表
    all_files = os.listdir(target_dir)

    # 遍历所有文件和文件夹
    for file_or_folder in all_files:
        # 检查文件名是否以指定的前缀之一开头
        for prefix in prefixes_to_move:
            if file_or_folder.startswith(prefix) or file_or_folder.endswith('revlog'):
                # 构建源文件路径和目标文件路径
                source_path = os.path.join(target_dir, file_or_folder)
                target_path = os.path.join(others_dir, file_or_folder)
                # print(source_path, target_path)
                # 移动文件到"others"文件夹
                shutil.move(source_path, target_path)
                # print(f"Moved {file_or_folder} to {others_dir}")
    # print("操作完成")


def write_to_file_in_path(path, path1, path2, error_lines, error_message):
    folder_path = os.path.join(path, 'Tag_c')
    file_path = os.path.join(folder_path, '1.txt')

    # 创建文件夹Tag_c（如果不存在）
    os.makedirs(folder_path, exist_ok=True)
    # print(error_lines)

    # 将信息写入文件
    with open(file_path, 'w') as file:
        file.write(f"{path1}\n")
        file.write(f"{path2}\n")
        file.write(','.join(map(str, error_lines)) + '\n')  # 将error_lines转换为字符串
        file.write(f"{error_message}\n")


def InDir(path, dirName):
    tempFileName = dirName.split("-")
    # 将冗余文件挪进others文件夹中
    # 在当前目录下调用函数，并指定前缀列表
    move_files_to_others(path, ['input-neg', 'output-neg', 'Makefile', 'output-pos', 'input-pos', 'test-', "revlog"])

    # 定位错误位置,并写入文件夹
    rightFileName = tempFileName[0] + "-" + tempFileName[1] + "-" + tempFileName[4] + ".c"
    faultFileName = tempFileName[0] + "-" + tempFileName[1] + "-" + tempFileName[3] + ".c"
    dpFaultNumber(path, os.path.join(path, rightFileName), os.path.join(path, faultFileName),rightFileName,faultFileName)

    # 整理文件格式
    move_and_rename_files(path,"TEST_DATA_TCG1")


def move_files_to_folders(path, path1, path2):
    ac_c_folder = os.path.join(path, 'AC_c')
    wa_c_folder = os.path.join(path, 'WA_c')

    # 创建文件夹AC_c和WA_c（如果不存在）
    os.makedirs(ac_c_folder, exist_ok=True)
    os.makedirs(wa_c_folder, exist_ok=True)
    # print(path,path1)
    # 构建源文件路径和目标文件路径
    source_path1 = os.path.join(path, path1)
    target_path1 = os.path.join(ac_c_folder, os.path.basename(path1))

    source_path2 = os.path.join(path, path2)
    target_path2 = os.path.join(wa_c_folder, os.path.basename(path2))
    # print(source_path1,target_path1)
    # 移动文件
    shutil.move(source_path1, target_path1)
    # print(f"Moved {path1} to {ac_c_folder}")

    shutil.move(source_path2, target_path2)
    # print(f"Moved {path2} to {wa_c_folder}")
def move_and_rename_files(source_dir, dest_dir):
    # 创建目标文件夹TEST_DATA_TCG1（如果不存在）
    # print()
    # print(source_dir,dest_dir)
    os.makedirs(os.path.join(source_dir,dest_dir), exist_ok=True)

    # 获取源目录下所有文件
    all_files = os.listdir(source_dir)

    # 遍历所有文件
    for file_name in all_files:
        # 检查文件名是否匹配指定格式
        if file_name.startswith("heldout-input-pos") or file_name.startswith("heldout-output-pos"):
            # 构建源文件路径和目标文件路径
            source_path = os.path.join(source_dir, file_name)

            # 删除两个段横杠之间的"input"
            new_file_name = file_name.replace("-input-", "").replace("-output-", "")

            # 在文件名结尾添加后缀
            if "input" in file_name:
                new_file_name += ".in"
            elif "output" in file_name:
                new_file_name += ".out"

            dest_path = os.path.join(source_dir,dest_dir, new_file_name)

            # 移动并重命名文件
            shutil.move(source_path, dest_path)
            # print(f"Moved and renamed: {file_name} to {new_file_name}")


def GetTheFaultLine(path):
    # print("path")
    dirList = os.listdir(path)
    # print(dirList)
    for path2 in tqdm(dirList):
        singleDirPath = os.path.join(path, path2)
        # print(singleDirPath)
        InDir(singleDirPath, path2)


def read(path):
    with open(path, 'rb') as f:
        item = f.readlines()
        return item


def DealWithTheErrorTestSuit(path):
    dirList = os.listdir(path)
    for dirName in dirList:
        fileList = os.listdir(os.path.join(path, dirName))

        for fileName in dirList:
            filePath = os.path.join(os.path.join(path, dirName, fileName))


def DealWithTheDirStruct(path):
    dirList = os.listdir(path)


if __name__ == "__main__":
    # GetTheFaultLine("test")
    GetTheFaultLine("codeflaws")
# rm -rf ./codeflaws/365-A-bug-14907005-14907262
# rm -rf  ./codeflaws/*.tar.gz
# rm -rf codeflaws/*/*.c.revlog
# rm ./codeflaws/codeflaws-defect-detail-info.txt
# rm ./codeflaws/README.md