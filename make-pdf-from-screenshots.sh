#!/bin/bash

#path to store pdf
dir_to_store_pdf='/home/balalaika/Dokumenty/Pdfy'
#also remember to add below line to i3 config 
#bindsym --release $mod+c exec maim -usb 0 > /home/balalaika/noice.jpg

read -p "Enter pdf name: " pdf_name
echo "Press [win] + [c] to make a screenshot and after that any key to add image to pdf"
touch $dir_to_store_pdf/$pdf_name.pdf
while [ true ] ; do
	read -t 2 -n 1
	if [ $? = 0 ] ; then
		convert $dir_to_store_pdf/$pdf_name.pdf ~/noice.jpg $dir_to_store_pdf/$pdf_name.pdf
		echo "Image add to pdf"
	rm -rf ~/noice.jpg
	fi
done
