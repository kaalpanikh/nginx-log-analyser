#!/bin/bash

# Check if a log file is provided as an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <access.log>"
  exit 1
fi

LOG_FILE="$1"

echo "Analyzing log file: $LOG_FILE"
echo "---------------------------------"

# 1. Top 5 IP Addresses
echo "Top 5 IP addresses:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
echo ""

# 2. Top 5 Requested Paths
# The request line is enclosed in quotes. First, extract the part within quotes,
# then extract the second word which is the path.
echo "Top 5 requested paths:"
awk -F'"' '{print $2}' "$LOG_FILE" | awk '{print $2}' | sort | uniq -c | sort -rn | head -5
echo ""

# 3. Top 5 Response Status Codes
# Assuming the status code is in the 9th column (this might vary with your log format)
echo "Top 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
echo ""

# 4. Top 5 User Agents
# The user agent is typically the sixth field when splitting by double quotes.
echo "Top 5 user agents:"
awk -F'"' '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
echo ""
