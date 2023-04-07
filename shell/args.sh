#!/bin/bash

# 定义各种函数

# 打印帮助信息
function print_help() {
    echo "Usage: $0 [OPTIONS] COMMAND [ARGS]"
    echo ""
    echo "Options:"
    echo "  -h, --help    Show this help message and exit"
    echo ""
    echo "Commands:"
    echo "  command1      Description of command1"
    echo "  command2      Description of command2"
}

# 加法函数
function add() {
    local sum=0
    for num in "$@"; do
        sum=$((sum + num))
    done
    echo "$sum"
}

# 减法函数
function subtract() {
    local diff=$1
    shift
    for num in "$@"; do
        diff=$((diff - num))
    done
    echo "$diff"
}

# 乘法函数
function multiply() {
    local product=1
    for num in "$@"; do
        product=$((product * num))
    done
    echo "$product"
}

# 除法函数
function divide() {
    local dividend=$1
    shift
    for num in "$@"; do
        dividend=$((dividend / num))
    done
    echo "$dividend"
}

# 处理命令1
function process_command1() {
    # 实现命令1的逻辑

    # 加法示例
    local result=$(add 2 3 4)
    echo "The sum is: $result"

    # 减法示例
    local result=$(subtract 10 2 3)
    echo "The difference is: $result"

    # 乘法示例
    local result=$(multiply 2 3 4)
    echo "The product is: $result"

    # 除法示例
    local result=$(divide 144 2 3)
    echo "The quotient is: $result"
}
# 处理命令2
function process_command2() {
    # 实现命令2的逻辑

    # for循环示例
    for i in {1..5}; do
        echo "The value of i is: $i"
    done

    # while循环示例
    local counter=1
    while [[ $counter -le 5 ]]; do
        echo "The value of counter is: $counter"
        ((counter++))
    done

    # until循环示例
    local countdown=10
    until [[ $countdown -eq 0 ]]; do
        echo "Countdown: $countdown"
        ((countdown--))
    done

    # 条件分支示例
    local num=10
    if [[ $num -gt 0 ]]; then
        echo "$num is positive"
    elif [[ $num -lt 0 ]]; then
        echo "$num is negative"
    else
        echo "$num is zero"
    fi
}

# 处理参数
while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            print_help
            exit 0
            ;;
        command1)
            process_command1 "$@"
            exit 0
            ;;
        command2)
            process_command2 "$@"
            exit 0
            ;;
        *)
            echo "Error: unrecognized command '$1'"
            print_help
            exit 1
            ;;
    esac
done

# 如果没有输入命令，则输出帮助信息
print_help
