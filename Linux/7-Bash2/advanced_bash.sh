#!/usr/bin/bash


#
#  Advanced Variables operations.
#                   1. variable_name:-<default value>
#                   2. variable_name:=<default value>
#                   3. variable_name:?<default value>


# echo "advanced bash" 

# declare NAME=""

# echo "${NAME:-zahran}" #variable is empty --> output = name=zahran
# echo "${NAME:=zahran}" #variable is not defined --> output --> define variable -> set variable = value 
# echo "${NAME:?zahran}" #variable is not declared --> raise error 

############################################## Advanced string Operations. ###############################################
#      string operations:
                    # 1. check string  ---> empty, declared, string1 = string2 (DONE)
#                   # 2. get sub-string   ---> string (DONE)
#                   # 3. Matching Pattern ---> 
                                        # Searching pattern inside string. (DONE)
                                        # Extract (DONE).
#           


# 1. check string.
#declare string="hello world ana" 

# #echo "${string:3}" #cut first few strings 
# #echo "${string : -3 }"
# declare filename="hello.txt" 
# # 2.matching pattern 
#     #2.1.1 extract from the beginning 
## declare basic_name=${filename##*.}
# echo "${basic_name}"
#     #2.1.2 extract from the end 
# declare basic_name2=${filename%.*}
# echo "${basic_name2}"


# declare data="hello world wow"

# #echo "$data" | grep  "wow"

# if echo "$data" | grep -q "wow" ; then 
#     echo "pattern found"
# else 
#     echo "pattern not found"
# fi

################################ FLOW CONTROL ########################
###while loops 
# declare -i a=0 
# while (( $a < 10 )); do 

#     echo "${a}"
#     ((a++))
# done

###for 
# declare -i a=0 

# for a in 1 2 3 4 5 ; do 
#     echo "${a}"
# done 
declare os=$1
# case "${os}" in
#     Linux)
#         echo "case = ${os}"
#         ;;
#     windows)
#         echo "case = ${os}"
#         ;;
#     *)
#         echo "case = ${os}"
#         ;;
# esac
############ SELECT V.I ########
# select os in "Linux" "windows" ; do 
#     echo ${os}; 
# done 

######PROCESSING FILES#########
#read file 

#write file 

# #
# cat $1 | while read line ; do 
#     echo "${line}"
# done


#####################functions##############33
#   set command:
            #  set -e  (Activate error) # once error detected ----> script terminate.
            #  set +e  (Deactivate error)
            #  set -x  * (Activate trace) *
            #  set +x  * (Deactivate trace) *
            #  set -u  * ( raise error in-case access undefined variable )
            #  set +u

# function name () {
#     echo "first function"
# }

# name

############################################################ ADD FILE TO ~/.bashrc #######################################################################
#1- export PATH=$PATH:/home/zahran/Desktop/EmbeddedLinux/Linux/8-BashProjects/
#2- source ~/.bashrc 
#3- run the script ##optional give it an alias name

