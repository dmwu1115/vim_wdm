#!/bin/bash

if [ ! -d 'csp' ];then
    mkdir csp
fi

if [ -f './csp/cscope.files' ];then
    rm ./csp/cscope.files
fi

touch ./csp/cscope.files

dir=$1
arch=$2
dir_list=""
for file in $(ls $dir)
do
    if [[ $file == 'arch' ]];then
        find ${dir}/${file}/${arch} -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.s" -o -name "*.S" >> ./csp/cscope.files
        dir_list=${dir_list}\ ${dir}/${file}/${arch}
    else
        find ${dir}/${file} -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.s" -o -name "*.S" >> ./csp/cscope.files
        dir_list=${dir_list}\ ${dir}/${file}
    fi
done

if [ -f './csp/cscope.out' ];then
    rm ./csp/cscope.out
fi

echo ${dir_list}
cscope -bkq -i ./csp/cscope.files

ctags -R ${dir_list}

echo "Start create lookupfile tags"
echo -e "!_TAG_FILESORTED\t2\t2=folecase/" > ./csp/lookuptags
find . -not -regex '.*\.\(out\|files\|IAB\|IAD\|IMB\|IMD\|PO\|PFI\|PRI\|PR\|PS\|SearchResults\|WK3\)' -type f -printf "%f\t%p\t1\n" |\sort -f >> ./csp/lookuptags

