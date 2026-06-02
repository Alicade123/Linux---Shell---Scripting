#!/bin/bash
# ==============================================================================
# COURSE REFERENCE: RSLX EN-US SG M02 MANAGING PROCESSES
# DESCRIPTION: Reference script covering process monitoring, signals, and jobs.
# USAGE: Read as a guide or run directly: bash rslx_m02_managing_processes.sh
# ==============================================================================

clear
echo "=============================================================================="
echo "               RSLX M02 MANAGING PROCESSES REFERENCE MANUAL"
echo "=============================================================================="

# ------------------------------------------------------------------------------
# 1. PROCESS DEFINITION & IDENTIFICATION
# ------------------------------------------------------------------------------
echo -e "\n--> 1. WHAT IS A PROCESS?"
echo "• A process is a running instance of a program in execution."
echo "• Every process is assigned a unique Process ID (PID)."
echo "• The first process started by the kernel is 'systemd' or 'init' (PID 1)."


# ------------------------------------------------------------------------------
# 2. CORE PROCESS MANAGEMENT COMMANDS
# ------------------------------------------------------------------------------
echo -e "\n--> 2. PROCESS MANAGEMENT COMMANDS"

echo "• ps     - Snapshot of current active processes."
echo "  Example: ps -ef  (Displays every process running with full details)"
echo "  Example: ps aux  (Displays resource usage like CPU and memory)"

echo "• top    - Real-time dynamic view of running processes."
echo "  Example: Interactive screen sorted by CPU usage. Press 'q' to exit."

echo "• htop   - Enhanced, interactive, colorized version of top."

echo "• pgrep  - Looks up processes based on name and attributes."
echo "  Example: pgrep sshd (Returns only the PID of the sshd service)"

echo "• pidof  - Finds the PID of a running program by its exact name."
echo "  Example: pidof bash"


# ------------------------------------------------------------------------------
# 3. MANAGING FOREGROUND & BACKGROUND JOBS
# ------------------------------------------------------------------------------
echo -e "\n--> 3. JOB CONTROL (Foreground vs. Background)"
echo "• Append '&' to a command to launch it directly into the background."
echo "  Example: sleep 100 &"

echo "• Ctrl + Z : Pauses/suspends the current foreground process."
echo "• jobs     : Lists all stopped or background jobs for the current session."
echo "• bg %1    : Resumes the suspended job #1 in the background."
echo "• fg %1    : Brings the background job #1 back to the foreground."


# ------------------------------------------------------------------------------
# 4. TERMINATING PROCESSES (Signals)
# ------------------------------------------------------------------------------
echo -e "\n--> 4. KILLING PROCESSES & SIGNALS"
echo "• kill     - Sends a specific signal to a process using its PID."
echo "• killall  - Sends a signal to all processes matching a program name."
echo "• pkill    - Sends a signal based on name or other attributes."

echo -e "\nCommon Linux Signals:"
echo "• SIGTERM (15) : Default safe termination. Allows cleanup. (kill PID)"
echo "• SIGKILL (9)  : Forced immediate termination. Cannot be ignored. (kill -9 PID)"
echo "• SIGHUP  (1)  : Hangup signal. Reloads configuration files. (kill -1 PID)"
echo "• SIGSTOP (19) : Pauses a process (same as Ctrl+Z)."
echo "• SIGCONT (18) : Resumes a paused process."


# ------------------------------------------------------------------------------
# 5. JOB SCHEDULING: AT VS. CRON
# ------------------------------------------------------------------------------
echo -e "\n--> 5. JOB SCHEDULING COMPARISON"
echo "=============================================================================="
echo " FEATURE       | 'at' COMMAND                | 'cron' COMMAND"
echo "=============================================================================="
echo " Frequency     | Execution happens ONCE.    | RECURRING/repetitive tasks."
echo " Use Case      | Run a script tonight at 11 | Run backup every Sunday night."
echo " Daemon        | Managed by 'atd' service.   | Managed by 'crond' service."
echo " Configuration | Interactive CLI prompt.     | Configured via 'crontab -e'."
echo "=============================================================================="

echo -e "\nCron Format Quick Reference (5 Stars):"
echo " *     *     *     *     *"
echo " Min  Hour  Day   Month  Day-of-Week"
echo " (0-59)(0-23)(1-31)(1-12) (0-6, 0=Sunday)"
echo " Example: 0 4 * * 1 /bin/script.sh (Runs every Monday at 4:00 AM)"

echo -e "\n=============================================================================="
echo "                              END OF REFERENCE"
echo "=============================================================================="
