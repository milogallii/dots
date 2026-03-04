#!/bin/bash
battery=$(acpi | awk -F', ' '{print $1 ", " $2}' | awk '{print $3 " " $4}')
notify-send "$battery"
