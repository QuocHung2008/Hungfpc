#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
OFS=$IFS
IFS="
"
/usr/bin/ld        -x   -multiply_defined suppress -L. -o /Users/macos/Downloads/CODE/fpascals/projecttest/main `cat link11042.res` -filelist linkfiles11042.res
if [ $? != 0 ]; then DoExitLink ; fi
IFS=$OFS
