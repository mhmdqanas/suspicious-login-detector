# Suspicious Login Detector

A simple Bash script that analyzes authentication logs to detect brute-force login attempts by counting failed login attempts per IP address.

## What it does
- Parses a log file for failed login attempts
- Counts how many times each IP address failed to log in
- Flags any IP with more than 3 failed attempts as suspicious

## Tools used
- grep, awk, sort, uniq (core Linux command-line tools)

## How to run
