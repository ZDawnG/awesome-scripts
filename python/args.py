#!/usr/bin/env python

import sys

# 打印帮助信息
def print_help():
    print("Usage: {} [OPTIONS] COMMAND [ARGS]".format(sys.argv[0]))
    print("")
    print("Options:")
    print("  -h, --help    Show this help message and exit")
    print("")
    print("Commands:")
    print("  command1      Description of command1")
    print("  command2      Description of command2")

# 加法函数
def add(*args):
    return sum(args)

# 减法函数
def subtract(a, *args):
    for num in args:
        a -= num
    return a

# 乘法函数
def multiply(*args):
    product = 1
    for num in args:
        product *= num
    return product

# 除法函数
def divide(a, *args):
    for num in args:
        a /= num
    return a

# 处理命令1
def process_command1():
    # 实现命令1的逻辑

    # 加法示例
    result = add(2, 3, 4)
    print("The sum is:", result)

    # 减法示例
    result = subtract(10, 2, 3)
    print("The difference is:", result)

    # 乘法示例
    result = multiply(2, 3, 4)
    print("The product is:", result)

    # 除法示例
    result = divide(144, 2, 3)
    print("The quotient is:", result)

# 处理命令2
def process_command2():
    # 实现命令2的逻辑

    # for循环示例
    for i in range(1, 6):
        print("The value of i is:", i)

    # while循环示例
    counter = 1
    while counter <= 5:
        print("The value of counter is:", counter)
        counter += 1

    # 条件分支示例
    num = 10
    if num > 0:
        print(num, "is positive")
    elif num < 0:
        print(num, "is negative")
    else:
        print(num, "is zero")

# 处理参数
if __name__ == "__main__":
    if len(sys.argv) < 2:
        print_help()
        sys.exit(1)

    if sys.argv[1] == "-h" or sys.argv[1] == "--help":
        print_help()
        sys.exit(0)

    if sys.argv[1] == "command1":
        process_command1()
        sys.exit(0)

    if sys.argv[1] == "command2":
        process_command2()
        sys.exit(0)

    print("Unrecognized command:", sys.argv[1])
    print_help()
    sys.exit(1)
