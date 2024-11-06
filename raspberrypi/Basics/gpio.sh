#!/usr/bin/bash

gpio_export()
{
	#arg1 = gpio number
	echo "$1" >/sys/class/gpio/export
	echo "in" >/sys/class/gpio/gpio$1/direction 
}

# This function will free up the GPIO for use elsewhere
gpio_unexport()
{
	echo "$1" >/sys/class/gpio/unexport
}

# This gets the value of the GPIO pin
gpio_value()
{
	#arg1 = gpio number
	cat /sys/class/gpio/gpio$1/value
}