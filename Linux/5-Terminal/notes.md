-some commands executed within the bash 

-others are from ithin the filesystem /usr/bin 

-environment varriables are used to customize shell and store configurations 

-process receive environemnt variables by inheritance or by startup scripts 

***$env*** --> print envionment variables loaded on the current terminal 

***$export new_var = "varibale added"*** --> add environment var (temporarily) 

-adding this environment varibale make the child processes inherit this var 

***$PATH=$PATH:/new_dir*** --> now it will add new_dir to the paths to search for executing commands 

sourcing --> load all the .bashrc and environment variables to the current running terminal 

