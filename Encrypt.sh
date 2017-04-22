#!/bin/bash
echo "Welcome, I will encrypt a file for you, please place the file in same folder as this script"
echo "Please enter the exact file name with extension"
read file;
gpg -c $file
echo "File encrypted ..."
echo "Original file removed... goodbye"
rm -rf $file
