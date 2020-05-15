#!/usr/bin/env bash
read -p "Image Path:" path
#maxsize=$((1024*1))
total_png_files=0
total_png_size_before=0
total_png_size_after=0

fn_list () {
    filelist=`ls $path`
    for filename in $filelist; do
        fname=`basename $filename`
        ex="${fname##*.}"
        
        if [ -f $filename ] && [ $ex = 'png' -o $ex = 'PNG' ] ;then
            echo $filename
            fn_compress $filename
        elif [ -d $filename ];then
            cd $filename
            path=`pwd`
            fn_list
            cd ..
        fi
    done
}
fn_compress () {
    imgpath=$1
    filesize=`ls -l $imgpath | awk '{ print $5 }'`
    ((total_png_size_before+=$filesize))
    # if [ $filesize -ge $maxsize ]; then
        # gm
        # convert.exe -quality 60% $imgpath $imgpath
        # pngquant 
        pngquant --force --quality 60-80 --strip --ext ".png" $imgpath "$imgpath"
        compressed_file_size=`ls -l $imgpath | awk '{ print $5 }'`
        ((total_png_files+=1)) 
        ((total_png_size_after+=$compressed_file_size))
        # echo $imgpath
    # fi
}
cd $path
fn_list
echo "\
Total png files $total_png_files \
beforeSize: $((total_png_size_before/1024))KB \
afterSize: $((total_png_size_after/1024))KB \
compressed $(((total_png_size_before - total_png_size_after) /1024))KB "

