#!/bin/sh

function usage() {
    echo 'Commands:'
    echo ' - mypy - runs mypy checker in the main app'
    echo ' - black - runs `black` code formatter'
}

function run_mypy() {
    python -m mypy preview.py
}

function run_black() {
    python -m black . --config black.toml
}

if (( $# > 0 )); then
    command=$1
    shift

    case $command in
        'mypy')
            run_mypy $@
            ;;
        'black')
            run_black $@
            ;;
        *)
            echo "Command \"$command\" unknown."
            echo
            usage
            ;;
    esac
else
    echo 'Please give a command.'
    echo
    usage
fi
