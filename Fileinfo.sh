#!/bin/bash
echo "Enter File path"
read x
echo "Processing..................."
exiftool $x > info.txt
grep "File Size\|File Type\|File Permissions" info.txt >fileinfo.txt
cat fileinfo.txt
