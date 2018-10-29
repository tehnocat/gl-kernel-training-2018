#!/bin/bash -x
PARAM_N=1
FILE_PATH=~/bash/task1.out
LOCALE=
function print_localized_message()
{
    if [ "$LOCALE" = UA ] then
    case "$1" in
        "MSG1") echo "-n параметр повинен доривнювати або бiльше за одиницю" >&2;;
        "MSG2") echo "-n параметр повинен бути цiлим числом" >&2;;
        "MSG3") echo "Забагато аргументiв" >&2;;
        "MSG4") echo "Не вдалося створити папку виводу" >&2;;
        "MSG5") echo "Не вдалося створити файл" >&2;;
    esac
    else
    case $1 in 
        "MSG1") echo "-n parameter must be equal or greater than 1" >&2;;
        "MSG2") echo "-n parameter must be an integer value" >&2;;
        "MSG3") echo "Too many arguments" >&2;;
        "MSG4") echo "Failed to create output folder" >&2;;
        "MSG5") echo "Failed to create output file" >&2;;
    esac
    fi
}

function check_locale()
{
    if [ "$LANG" = "uk_UA.UTF-8" ]
    then
        LOCALE=UA
    fi
}

function check_file_exist() {

}

function create_dir() {
    if !mkdir -p ~/bash; then
        print_localized_message MSG4
        exit 1
    fi
    if touch ${FILE_PATH}; then
        print_localized_message MSG5
        exit 1
    fi
}

function get_hw_info()
{

}
