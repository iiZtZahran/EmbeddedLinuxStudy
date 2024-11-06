#!/usr/bin/bash -i

# Load configuration from the config file
CONFIG_FILE="config.cfg"

if [[ -f "$CONFIG_FILE" ]]; then
    source "$CONFIG_FILE"
else
    echo "Configuration file not found. Using default values."
    update_interval=2
    cpu_alert_threshold=80
    mem_alert_threshold=75
fi

#Display Information about running process
function system_processess_info() {
    echo "Displating System Processess Information"
    top
}

#add logging
LOG_FILE="process_activity.log"
function log_activity() {
    local MESSAGE="$1"
    local TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    echo "$TIMESTAMP - $MESSAGE" >>"$LOG_FILE"
}

#kill process by entering process id from the user through interactive terminal
function kill_process() {
    #echo "Enter the process id you want to kill"
    read -p "Enter Process ID: " PID
    kill "$PID"
    log_activity "Process $PID terminated."

}

#function to display info about specific process
function process_info() {
    read -p "Choose a process to know more info about it: " PID
    ps -p "$PID" -o pid,ppid,user,%cpu,%mem,etime,comm

}

#Real time Mointoring
function real_time_monitor() {
    read -p "enter process ID" PID
    watch -n "$update_interval" ps -p "$PID" -o pid,ppid,user,%cpu,%mem,etime,comm

}

#Search and filter based on name or user
function search_filter_processess() {
    read -p "Enter the filter you want to use: " FILTER
    if [[ "$FILTER" == "cpu" ]]; then
        ps aux --sort=-%cpu
    elif [[ "$FILTER" == "mem" ]]; then
        ps aux --sort=-%mem | head -n 10
    elif [[ "$FILTER" == "user" ]]; then
        read -p "enter the username: " USERNAME
        ps -u "$USERNAME"

    fi
}

PS3="Select what you want: "
select opt in "Display System Info" "Kill Process" "Search and Filter Processes" "Real Time Monitor" "Exit"; do
    case $opt in
        "Display System Info")
            system_processes_info
            ;;
        "Kill Process")
            kill_process
            ;;
        "Search and Filter Processes")
            search_filter_processes
            ;;
        "Real Time Monitor")
            real_time_monitor
            ;;
        "Exit")
            echo "Exiting"
            break
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
done