#!/bin/bash
# ==============================================================================
# COURSE REFERENCE: RSLX EN-US SG M02 BASH SHELL SCRIPTS
# DESCRIPTION: Reference script covering core scripting tasks, structures, & logic.
# USAGE: Read as a guide or run directly: bash rslx_m02_bash_scripts.sh
# ==============================================================================

clear
echo "=============================================================================="
echo "               RSLX M02 BASH SHELL SCRIPTS REFERENCE MANUAL"
echo "=============================================================================="

# ------------------------------------------------------------------------------
# 1. CORE SCRIPING OBJECTIVES & TASKS
# ------------------------------------------------------------------------------
echo -e "\n--> 1. WHAT IS A SCRIPT & COMMON USE CASES"
echo "• A shell script is a text file containing a sequence of commands for the shell."
echo "• Common tasks accomplished through scripting:"
echo "  - Routine Automation: Backups, log rotations, and system updates."
echo "  - Configuration: Automatically setting up developer environments or servers."
echo "  - Monitoring & Alerting: Checking disk space, memory, and emailing alerts."
echo "  - Bulk Processing: Parsing large data logs and modifying batches of files."


# ------------------------------------------------------------------------------
# 2. ANATOMY OF A BASIC BASH SCRIPT
# ------------------------------------------------------------------------------
echo -e "\n--> 2. BASIC SCRIPT ANATOMY"
echo "• The Shebang (#!/bin/bash): Always on line 1. Tells the kernel which shell to use."
echo "• Comments (#): Used to document logic, authorship, and maintenance context."
echo "• Variables: Declared without spaces (e.g., NAME=\"Admin\"). Referenced with '$'."


# ------------------------------------------------------------------------------
# 3. FREQUENTLY USED COMMANDS IN SCRIPTS
# ------------------------------------------------------------------------------
echo -e "\n--> 3. CORE SCRIPTING COMMANDS"
echo "• echo      - Outputs text strings or variable states to standard output."
echo "• read      - Accepts interactive user input and stores it into a variable."
echo "• exit      - Terminates the script execution. 'exit 0' indicates success."
echo "• command \$ - Command substitution syntax to capture execution output."


# ------------------------------------------------------------------------------
# 4. LOGICAL CONTROL STATEMENTS (Syntax Reference)
# ------------------------------------------------------------------------------
echo -e "\n--> 4. LOGICAL CONTROL STRUCTURES (SYNTAX GUIDE)"

echo -e "\n[ IF-ELSE STATEMENT ]"
echo "  if [ \$AGE -gt 18 ]; then"
echo "      echo 'Access Granted'"
echo "  else"
echo "      echo 'Access Denied'"
echo "  fi"

echo -e "\n[ FOR LOOP (Iteration) ]"
echo "  for item in file1.txt file2.txt file3.txt; do"
echo "      echo \"Processing \$item\""
echo "  fi"

echo -e "\n[ WHILE LOOP (Conditional Iteration) ]"
echo "  while [ \$COUNT -lt 5 ]; do"
echo "      echo \"Count is \$COUNT\""
echo "      ((COUNT++))"
echo "  done"


# ------------------------------------------------------------------------------
# 5. SCRIPT EXECUTION METHODS
# ------------------------------------------------------------------------------
echo -e "\n--> 5. HOW TO RUN A SHELL SCRIPT"
echo "• Method 1 (Direct Execution - Best Practice):"
echo "  Step 1: Grant permissions -> chmod +x script.sh"
echo "  Step 2: Execute script   -> ./script.sh"
echo ""
echo "• Method 2 (Passing to interpreter directly):"
echo "  Execute script   -> bash script.sh"


# ------------------------------------------------------------------------------
# 6. KEY TAKEAWAYS SUMMARY
# ------------------------------------------------------------------------------
echo -e "\n=============================================================================="
echo "                          CRITICAL KNOWLEDGE CHECK"
echo "=============================================================================="
echo "• Scripts consolidate multiple system commands into a single, automated asset."
echo "• Control statements guide the script execution flow using logic boundaries."
echo "• Explicitly use execution status numbers (exit codes) to ensure script reliability."
echo "=============================================================================="

echo -e "\nManual loaded successfully."
