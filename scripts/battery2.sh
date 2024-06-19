#!/bin/bash

# Set the battery threshold for notification (in percentage)
BATTERY_THRESHOLD=20

# Function to check battery status
check_battery_status() {
    # Get battery information using acpi
    battery_info=$(acpi -b)

    # Extract battery percentage
    battery_percentage=$(echo $battery_info | grep -oP '\d+%' | tr -d '%')

    # Check if battery percentage is below the threshold
    if [ $battery_percentage -le $BATTERY_THRESHOLD ]; then
        # Send a notification
        notify-send "Low Battery" "Battery is at $battery_percentage%. Please connect the charger!"
    fi
}

# Run the function
check_battery_status
