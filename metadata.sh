#!/bin/bash
echo "Please enter The path of your File "
read x
echo " Mete data of your file :"
exiftool $x > metadata.txt
grep -v "ExifTool Version Number " metadata.txt
