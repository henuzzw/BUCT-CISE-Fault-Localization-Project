import subprocess
import os

# 要监视的变量名
variable_name = "myVariable"
print("6")
# 编译并运行C程序
subprocess.call(["gcc", "-g", "-o", "test", "test.c"])
# proc = subprocess.Popen(["gdb", "-q", "./test"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
proc = subprocess.Popen(["gdb", "-q", "-batch", "./your_program"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

# GDB命令函数
def gdb_command(command):
    proc.stdin.write(command + "\n")
    proc.stdin.flush()

# 启动GDB并加载程序
gdb_command("file ./test")
gdb_command("break main")
gdb_command("run")
print("21")
# 在main函数中设置观察点
gdb_command("break main.c:4")

# 运行程序并等待观察点触发
gdb_command("continue")
output = ""
output = ""
for line in proc.stdout:
    theLine = line.decode("utf-8")
    if "Breakpoint 1, main" not in output:
        output = theLine
        print(theLine," ----33")
        continue
    break
# for line in proc.stdout:
#     output+=line.de
# print("31")


# 初始化变量值序列
variable_values = []

# 在观察点循环
while True:
    print("41")
    # 获取变量值
    gdb_command(f"print {variable_name}")
    output = proc.stdout.readline()
    if "$1 = " in output:
        variable_value = output.split("$1 = ")[1].strip()
        variable_values.append(variable_value)

    # 继续执行程序
    gdb_command("continue")
    print("50")
    output = proc.stdout.readline()
    if "Program received signal" in output:
        break

# 打印变量值序列
for i, value in enumerate(variable_values):
    print(f"Step {i + 1}: {variable_name} = {value}")

# 退出GDB
# gdb_command("quit")

# 删除生成的可执行文件
# os.remove("your_program")
