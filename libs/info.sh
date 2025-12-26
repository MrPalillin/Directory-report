#!/bin/bash
#values="12345"
#echo $values
get_info(){
        file_stats=$(find "$1" -type f -exec stat -c "%n|%U|%G|%a|%s|%y" {} +)
        file_result=$(echo "$file_stats" | awk '{print $1}')
        file_format="${file_result//$1/'.'}"
        echo "$file_format"
}
print_info(){
        echo "Path: $1" >./results.csv
        echo "File Name|File owner|File group|File access|File size|Last modified" >> ./results.csv
        echo "$2" >> ./results.csv
}
