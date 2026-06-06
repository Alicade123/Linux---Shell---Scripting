#!/bin/bash
# ==============================================================================
# COURSE REFERENCE: RSLX EN-US SG M02 BASH SHELL
# DESCRIPTION: Reference script covering environment variables, profiles, & aliases.
# USAGE: Read as a guide or run directly: bash rslx_m02_bash_shell.sh
# ==============================================================================

clear
echo "=============================================================================="
echo "               RSLX M02 BASH SHELL REFERENCE MANUAL"
echo "=============================================================================="

# ------------------------------------------------------------------------------
# 1. THE ENV COMMAND & ENVIRONMENT VARIABLES
# ------------------------------------------------------------------------------
echo -e "\n--> 1. ENVIRONMENT VARIABLES (`env`)"
echo "• The 'env' command prints a list of all current environment variables."
echo "• Can also be used to run another utility in an altered environment."

echo -e "\nKey Environment Variables to Know:"
echo "  XDG_VTNR    -> Specifies the virtual terminal number."
echo "  XDG_SESSION_ID -> Specifies the unique session ID."
echo "  HOSTNAME    -> Specifies the name of the computer."
echo "  SHELL       -> Specifies the path of the current shell executable."
echo "  TERM        -> Defines terminal handling configuration."
echo "  PATH        -> System search paths for executable commands."
echo "  HOME        -> Path to the current user's home directory."


# ------------------------------------------------------------------------------
# 2. BASH INITIALIZATION FILES & ORDER OF EXECUTION
# ------------------------------------------------------------------------------
echo -e "\n--> 2. BASH ENVIRONMENT INITIALIZATION FLOW"
echo "When a user logs in (Login Shell):"
echo "  1. /etc/profile  (System-wide configurations, paths, USER, HOSTNAME, prompt)"
echo "  2. ~/.bash_profile or ~/.profile (User-specific login setup)"
echo ""
echo "When a user starts an interactive non-login shell (e.g., opening a terminal):"
echo "  1. /etc/bashrc   (System-wide functions and global shell aliases)"
echo "  2. ~/.bashrc     (User-specific personal functions and personal aliases)"


# ------------------------------------------------------------------------------
# 3. INTERACTIVE SLIDE DEMONSTRATION STEPS
# ------------------------------------------------------------------------------
echo -e "\n--> 3. HOW TO VIEW CONFIGURATION FILES (Instructor Steps)"
echo "• To view user hidden configurations:"
echo "  ls -a ~/         <- Lists hidden files like .bashrc"
echo "  cat ~/.bashrc    <- Displays user aliases and local functions"
echo ""
echo "• To view global configuration profiles:"
echo "  cat /etc/profile <- Displays system-wide global variables"


# ------------------------------------------------------------------------------
# 4. ALIAS & UNALIAS COMMANDS (Temporary vs. Permanent)
# ------------------------------------------------------------------------------
echo -e "\n--> 4. ALIAS MANAGEMENT"
echo "• Substitution syntax: alias alias_name='command'"
echo "• To remove an active alias: unalias alias_name"
echo "• Destructive commands (rm, cp, mv) often use alias to add '-i' (interactive)."

# Interactive demonstration block within this reference script
echo -e "\n[Executing Live Script Demo]: Creating temporary alias 'll'"
alias ll='ls -la'

echo "Command 'll' successfully mapped to 'ls -la'. Simulating execution:"
echo "• Executing 'll' down below:"
ll | head -n 3

echo -e "\n[Executing Live Script Demo]: Removing temporary alias 'll'"
unalias ll


# ------------------------------------------------------------------------------
# 5. MAKING ALIASES PERMANENT
# ------------------------------------------------------------------------------
echo -e "\n--> 5. MAKING ALIASES PERMANENT"
echo "• Temporary aliases disappear as soon as the shell session is closed."
echo "• To make them permanent, append them to the user's local profile file:"
echo "  Step 1: Open file -> nano ~/.bashrc"
echo "  Step 2: Add line  -> alias ll='ls -la'"
echo "  Step 3: Reload    -> source ~/.bashrc"


# ------------------------------------------------------------------------------
# 6. KEY TAKEAWAYS SUMMARY
# ------------------------------------------------------------------------------
echo -e "\n=============================================================================="
echo "                          CRITICAL KNOWLEDGE CHECK"
echo "=============================================================================="
echo "• Variables: Mechanisms used to store data values for reuse inside scripts."
echo "• Global Customization: Apply to /etc/profile if it affects ALL system users."
echo "• Local Customization: Apply to ~/.bashrc if it affects ONLY one specific user."
echo "=============================================================================="

echo -e "\nManual loaded successfully."
