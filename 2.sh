#!/bin/bash
lang="Hello,World!"
echo $lang           #简便
echo ${lang}         #更标准
readonly lang        #只读
lang="Bye"	     #报错
unset lang 	     #删除变量
echo lang 	     #空

