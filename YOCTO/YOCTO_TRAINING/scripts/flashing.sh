#!/usr/bin/bash

function sdcard-flashing(){
    if [[ "$1" == "--help" ]]; then
        printf "%s\n%s\n" "1st parameter: /dev/<driver>" "2nd parameter: <image iso>"
        return 0
    fi

    if (( $# < 2 )); then
        echo "Invalid arguments passed. Use --help for valid options."
        return 1
    fi

    declare DRIVER="$1"
    declare IMAGE_PATH="$2"

    sudo dd if="${IMAGE_PATH}" of="${DRIVER}" status=progress

    return 0
}

function create-rpi-image(){
    if [[ "$1" == "--help" ]]; then
        printf "%s\n%s\n" "1st parameter: image-name" "RUN: wic list images"
        return 0
    fi

    if (( $# < 1 )); then
        echo "Invalid arguments passed. Use --help for valid options."
        return 1
    fi

    declare IMAGE_NAME="$1"

    wic create sdimage-raspberrypi -e "${IMAGE_NAME}"

    return 0
}

# Uncomment this if you want to source the script automatically
# if [ -f "${HOME}/Desktop/EmbeddedLinuxStudy/YOCTO/YOCTO_TRAINING/flashing.sh" ]; then 
#     source "${HOME}/Desktop/EmbeddedLinuxStudy/YOCTO/YOCTO_TRAINING/flashing.sh"
# fi
