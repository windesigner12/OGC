#!/bin/bash

# Simple Interest Calculator Script
# Formula: SI = (P × R × T) / 100

echo "Simple Interest Calculator"

# Read user input
read -p "Enter the principal amount: " principal
read -p "Enter the annual interest rate (in %): " rate
read -p "Enter the time period (in years): " time

# Validate inputs (basic check for numbers)
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo "Simple Interest = $interest"
