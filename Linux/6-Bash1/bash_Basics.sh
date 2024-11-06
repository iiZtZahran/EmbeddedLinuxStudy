#1-shebang 
#the # means comment / the ! tell the system to use the following path as interpreter / /bin/bash specifies that the script should be run by the bash 
#!/bin/bash


#2- inputs 
    #actor: user - another script - service manager     

    #1-Before the run of the script(positional parameters) 
    #shell variables:
        # $0 --> script name 
        # $1 -->1st parameter 
        # $2 --> second parameter 
#echo $1 #prints out the script name 
#echo $0 #prints out the first passed parameter name 

    #2-after the run of the script 
    #read input from the user 
#read $NAME

#3-Variables: 
    #1-Local variables 
    #2-ENV variables 
    #3-shell variables 

    #variable operations:
        #1-Declaration --> declare
####################### LOCAL varibales ############# 
#declare NAME="zahran" #method 1 
#NAME2="x" #method 2 
#declare -r NAME2="mohamed" #read only (cannot be modified)
#unset NAME #Remove the variabale
#echo ${NAME} #print the variable 
#NAME2="x" #renaming but doesnt work as name2 is readonly 
#echo ${NAME2}
#declare -i num=100 
#echo ${num}

#############Environment variables #################
#export ENV_SHELL="Shell bash"
#echo ${ENV_SHELL}
        #2-assign value variable 
        #3-access variable 
        #4-delete variable 



#4-operations
    # 1. Variables -->1- direct assignations 
    #                 2- assign value from another command  
#declare NAME=`hostname` #hostname is zahran we get it and reassign it from this commant to another command 
#echo ${NAME}


    # 2. direct commands.

#pstree 
    # 3. Arth. operations (*, - , / , +).
#  declare -i X=10 
#  declare -i Y=5 
# declare -i RESULT=$(($X + $Y))

# echo ${RESULT}

    # 4. Check conditions.

        #1-numbers 
# if (($X > $Y)); then
#     echo "greater "
# fi 
    #block of code 

        #2-strings 
#declare KERNEL_TYPE="LINUX"
# declare CURRENT_KERNEL="LINUX"
# if (($CURRENT_KERNEL == KERNEL_TYPE)); then 
#     echo "false"
# fi

# if [[ -n $KERNEL_TYPE ]]; then # -z checks is null
#     echo "the st is empty "
# fi 

        #3-files and directories 

# if [[ -f $1 ]] ; then 
#     echo "file exist"
# else s
#     if [[ -z $1 ]] ; then 
#         echo "but empty"
#     fi 
# fi

# if [[ -s $1 ]] ; then 
#     echo "file empty "
# fi

# if [[ -G $1 ]] ; then 
#     echo `who` "is the owner "
# fi 

# if [[ -d $1 ]] ; then 
#     echo "directory exists"
# fi

# 4. Outputs:
# Two outputs:
#               1. Exit Status ----> RUN normally (0)  or there is an issue.
#               2. Print stdout: 1. echo   ---> command. 
#                                2. printf ---> report.
# 


# cd /empty 
# echo "$?" # this returns 1 if failed and 0 if its successfull
#exit 0 # the exit status is like return 
# #sourcing is executing the whole script in one process 
# Running a script (normal execution) is appropriate when you don't need to modify the environment of the current shell.
# Sourcing a script is useful when you want to load environment variables, functions, or other settings into your current shell session.


