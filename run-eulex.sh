#!/bin/bash

KERNEL=eulex

QEMU=${QEMU:-$(command -v qemu-system-i386)}
QEMU=${QEMU:-$(command -v qemu)}
QEMU=${QEMU:-$(command -v qemu-system-x86_64)}

if [ -z $QEMU ]; then
    echo "ERROR: qemu not found.";
    exit 1;
fi

$QEMU $@ -serial stdio -net none -kernel $KERNEL

# run-eulex.sh ends here
