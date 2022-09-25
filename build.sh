#!/bin/bash
echo "Cloning dependencies"
git clone https://github.com/d4rk-lucif3r/Cron-Pack-Demo.git  --depth=1 CRON_PACK_DEMO
git clone https://github.com/fabianonline/telegram.sh.git  -b master
BUILD_DIR=$(pwd)
CODE_DIR="${BUILD_DIR}/CRON_PACK_DEMO"
SEND_DIR="${BUILD_DIR}/telegram.sh"
function zip_func() {
    echo "ZIP Dir"
    cd $CODE_DIR || exit 1
    echo "Compressing"
    zip -r9 Pack.zip * 
}
function send() {
    echo "Sending"
    cd $SEND_DIR   || exit 1
    echo "Changing Dir to Send FIle"
    ./telegram -t $TELEGRAM_TOKEN -c $TELEGRAM_CHAT -f $CODE_DIR/Pack.zip "Zip Sent through CI/CD Pipeline"
    echo "File Sent"
}
zip_func
send