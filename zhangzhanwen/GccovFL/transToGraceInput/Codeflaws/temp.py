def dpFaultNumber(file1, file2):
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
    for row in dp:
        print(row)

    # 获取编辑过程
    i, j = len1 - 1, len2 - 1
    operations = []
    while i > 0 or j > 0:
        op_type = dp[i][j][5]
        if op_type == 0:  # 不需要额外操作
            i -= 1
            j -= 1
        elif op_type == 1:  # 替换
            operations.append((f"Replace {file1[i]} with {file2[j]} at position {i + 1}", i))
            i -= 1
            j -= 1
        elif op_type == 2:  # 插入
            operations.append((f"Insert {file1[i]} at position {i + 1} in file2", i))
            i -= 1
        elif op_type == 3:  # 删除
            operations.append((f"Delete {file2[j]} at position {i + 1} in file2", i))
            j -= 1

    # 处理剩余的元素
    while i > 0:
        operations.append((f"Insert {file1[i]} at the beginning of file2", i))
        i -= 1
    while j > 0:
        operations.append((f"Delete {file2[j]} at the beginning of file2", i))
        j -= 1

    # 反转编辑操作列表，以便按编辑顺序输出
    operations.reverse()

    print("编辑过程：")
    for op in operations:
        print(op)

    return dp[len1 - 1][len2 - 1][4]

# 测试
file1 = "ABCEDEF"
file2 = "AAACDE"


if __name__ == "__main__":
    with open("./test/2-C-bug-17380010-17380021/2-C-17380010.c", 'rb') as f:
        file1 = f.readlines()
    with open("./test/2-C-bug-17380010-17380021/2-C-17380021.c", 'rb') as f:
        file2 = f.readlines()
    result = dpFaultNumber(file1, file2)
    print(f"最小编辑代价: {result}")
