#!/bin/bash
# ==============================================================================
# COURSE REFERENCE: RSLX EN-US SG M02 WORKING WITH COMMANDS
# DESCRIPTION: Reference script covering text manipulation, search, and logic.
# USAGE: Read as a guide or run directly: bash rslx_m02_working_commands.sh
# ==============================================================================

# Create mock data files for demonstrations
echo -e "John,34,NY\nJane,28,CA\nBob,45,TX\nAlice,31,NY\nBob,45,TX" > names.csv
echo -e "line 1 page\nline 2 page extra\nline 3 website\nline 4 page page page page page page" > example.txt
echo -e "sshd service running\nconnection failed\nauthentication failed" > mock_log.txt

clear
echo "=============================================================================="
echo "               RSLX M02 WORKING COMMANDS REFERENCE MANUAL"
echo "=============================================================================="

# ------------------------------------------------------------------------------
# 1. GREP COMMAND (Search text and strings using pipes)
# ------------------------------------------------------------------------------
echo -e "\n--> 1. GREP DEMONSTRATIONS"
echo "Command: cat mock_log.txt | grep fail"
cat mock_log.txt | grep fail

echo "Command: ps -ef | grep sshd (Simulated with text)"
echo "root 1234 1 0 12:00 ? 00:00:00 /usr/sbin/sshd" | grep sshd


# ------------------------------------------------------------------------------
# 2. CUT COMMAND (Extract character, byte, or delimited fields)
# ------------------------------------------------------------------------------
echo -e "\n--> 2. CUT DEMONSTRATIONS"
# -d: Delimiter, -f: Field, -c: Column/Character, -b: Byte
echo "Field Extract (-d ',' -f 1):"
cut -d ',' -f 1 names.csv

echo "Character Range Extract (-c 1-2):"
cut -c 1-2 names.csv

echo "Specific Characters Extract (-c 1,6,7):"
cut -c 1,6,7 names.csv

echo "From Character to End (-c 4-):"
cut -c 4- names.csv

echo "Up to Character (-c -3):"
cut -c -3 names.csv


# ------------------------------------------------------------------------------
# 3. SED COMMAND (Stream Editor for parsing and transforming text)
# ------------------------------------------------------------------------------
echo -e "\n--> 3. SED DEMONSTRATIONS"
# s/old/new/ is the substitute command structure
echo "Replace 1st occurrence per line:"
sed 's/page/website/' example.txt

echo "Replace Nth (5th) occurrence on a line:"
sed 's/page/website/5' example.txt

echo "Replace all occurrences globally (/g):"
sed 's/page/website/g' example.txt


# ------------------------------------------------------------------------------
# 4. SORT COMMAND (Sort files alphabetically, numerically, or custom)
# ------------------------------------------------------------------------------
echo -e "\n--> 4. SORT DEMONSTRATIONS"
# Options: -r (Reverse), -u (Unique), -n (Numeric), -k (Column Key), -o (Output)
echo "Standard Alphabetical Sort:"
sort names.csv

echo "Reverse Order Sort (-r):"
sort -r names.csv

echo "Unique Entries Sort (-u):"
sort -u names.csv


# ------------------------------------------------------------------------------
# 5. AWK COMMAND (Programmable data pattern scanning and processing)
# ------------------------------------------------------------------------------
echo -e "\n--> 5. AWK DEMONSTRATIONS"
# Syntax: awk -F [separator] 'pattern {action}' file
echo "Print field 3 using comma separator:"
awk -F , '{ print $3 }' names.csv

echo "Select records matching regex (Two-digit number):"
awk -F , '/[0-9][0-9]/ { print $1 }' names.csv

echo "Conditional logic execution ($2 > 33):"
awk -F , '$2 > 33 { print $1 }' names.csv

echo "Block execution structure (BEGIN, body, END):"
awk 'BEGIN { print "Start Processing." }; { print $1 }; END { print "Done ! :]" }' names.csv


# ------------------------------------------------------------------------------
# 6. KNOWLEDGE CHECKPOINT SUMMARY
# ------------------------------------------------------------------------------
echo -e "\n=============================================================================="
echo "                          CRITICAL KNOWLEDGE CHECK"
echo "=============================================================================="
echo "• Wildcards: '?' matches exactly ONE character. '*' matches ZERO or MORE characters."
echo "• Uniq Command: 'uniq -c logfile.log' outputs unique lines with their frequency count."
echo "• Command Substitution Performance:"
echo "  Run long-lasting commands once and store the output into a variable."
echo "  Optimizes script execution speed and simplifies code maintenance."
echo "  CRITICAL RULE: Do not use substitution if data changes dynamically mid-run."
echo "=============================================================================="

# Clean up environment files
rm names.csv example.txt mock_log.txt
