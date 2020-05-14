#!/usr/bin/env bash

read -p "Input Path:" SPATH
#maxsize=$((1024*1))

FILELIST () {
        filelist=`ls $SPATH`
        for filename in $filelist; do
                fname=$(basename "$filename")
                ex="${fname##*.}"
                if [ -f $filename ] && [ $ex = 'jpg' -o $ex = 'jpeg' -o $ex = 'png' -o $ex = 'JPG' -o $ex = 'JPEG' -o $ex = 'PNG' ] ;then
                        echo $filename
                        COMPRESS $filename
                elif [ -d $filename ];then
                        cd $filename
                        SPATH=`pwd`
                        FILELIST
                        cd ..
                fi

        done
}
COMPRESS () {
    imgpath=$1
    filesize=`ls -l $imgpath | awk '{ print $5 }'`
    # if [ $filesize -ge $maxsize ]; then
        # gm
        # convert.exe -quality 60% $imgpath $imgpath
        # pngquant 
        pngquant --quality 60-80 --strip -v $imgpath "$imgpath"
        echo $imgpath
    # fi
}
cd $SPATH
FILELIST
echo "Done."
