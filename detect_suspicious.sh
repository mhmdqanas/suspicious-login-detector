#!/bin/bash
echo "=== Suspicious Login Attempts Report ==="
echo "Date: $(date)"
echo ""
echo "Top 5 IP addresses with failed login attempts:"
grep "Failed password" fake_auth.log | awk '{print $NF}' | sort | uniq -c | sort -nr | head -5
echo ""
echo "Any IP with more than 3 failed attempts is flagged as suspicious:"
grep "Failed password" fake_auth.log | awk '{print $NF}' | sort | uniq -c | sort -nr | awk '$1 > 3 {print "⚠️ Warning: " $2 " attempted " $1 " times"}'
