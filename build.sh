#!/bin/bash

if [ ! -e $(dirname $0)/br2_external/configs/pizero2w_defconfig ]; then
    echo "Saving config first"
    source $(dirname $0)/save-config.sh
fi

echo "Building image"
make -C $(dirname $0)/buildroot
