#!/bin/bash
#

readopt='getopts $opts opt;rc=$?;[ $rc$opt == 0? ]&&exit 1;[ $rc == 0 ]||{ shift $[OPTIND-1];false; }'

opts=vfdo:

# Enumerating options
while eval $readopt
do
    echo OPT:$opt ${OPTARG+OPTARG:$OPTARG}
done

# Enumerating arguments
for arg
do
    echo ARG:$arg
done

#Invocation example
#./myscript -v -do /fizz/someOtherFile -f ./foo/bar/someFile
#OPT:v 
#OPT:d 
#OPT:o OPTARG:/fizz/someOtherFile
#OPT:f 
#ARG:./foo/bar/someFile
