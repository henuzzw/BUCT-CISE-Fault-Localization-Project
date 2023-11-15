def faultLinePos(str1, str2):
    len1, len2 = len(str1), len(str2)

    # 初始化一个矩阵，用于保存子问题的编辑距离
    dp = [[0] * (len2 + 1) for _ in range(len1 + 1)]

    # 初始化第一行和第一列
    for i in range(len1 + 1):
        dp[i][0] = i
    for j in range(len2 + 1):
        dp[0][j] = j

    # 填充矩阵
    for i in range(1, len1 + 1):
        for j in range(1, len2 + 1):
            if str1[i - 1] == str2[j - 1]:
                dp[i][j] = dp[i - 1][j - 1]
            else:
                dp[i][j] = min(dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1]) + 1

    # 回溯找到不同的位置
    pos = []
    i, j = len1, len2
    while i > 0 and j > 0:
        if str1[i - 1] == str2[j - 1]:
            i -= 1
            j -= 1
        elif dp[i][j] == dp[i - 1][j] + 1:
            pos.append(i - 1)
            i -= 1
        elif dp[i][j] == dp[i][j - 1] + 1:
            pos.append(j - 1)
            j -= 1
        else:
            pos.append(i - 1)
            i -= 1
            j -= 1

    while i > 0:
        pos.append(i - 1)
        i -= 1
    while j > 0:
        pos.append(j - 1)
        j -= 1

    return pos[::-1]
