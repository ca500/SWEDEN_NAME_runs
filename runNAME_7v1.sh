#!/bin/bash

#Path to input file for NAME simulation (user input):
INPUTFILEPATH=$1

#Set stack size to unlimited:
ulimit -s unlimited

#Set environment variables:
export INTEL_HOME=/data/app/intel
export INTEL_LICENSE_FILE=$INTEL_HOME/licenses/l_XP42VJVG.lic
. $INTEL_HOME/bin/ifortvars.sh intel64

#Run the NAME simulation:
EXEPATH=/data/user_spaces/ca500/NAMEIII_v7_1_lotus/Executables_Linux/nameiii_64bit_par.exe
$EXEPATH $INPUTFILEPATH
