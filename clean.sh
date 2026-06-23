#!/bin/bash

if [ "$#" -eq 0 ]; then
    make -C $(dirname $0)/buildroot clean
    exit 0
fi

package=$1
make -C $(dirname $0)/buildroot $package-dirclean
