#!/bin/bash
# ==============================================================================
# COURSE REFERENCE: RSLX EN-US SG M02 MANAGING SERVICES & MONITORING
# DESCRIPTION: Reference script for systemctl, performance tools, & CloudWatch.
# USAGE: Read as a guide or run directly: bash rslx_m02_managing_services.sh
# ==============================================================================

clear
echo "=============================================================================="
echo "          RSLX M02 MANAGING SERVICES & MONITORING REFERENCE MANUAL"
echo "=============================================================================="

# ------------------------------------------------------------------------------
# 1. SERVICE MANAGEMENT WITH SYSTEMCTL
# ------------------------------------------------------------------------------
echo -e "\n--> 1. SYSTEMCTL COMMAND SYNTAX"
echo "• Syntax: systemctl <subcommand> <service_name>"
echo "• Old Alternative: service <service_name> <subcommand> (systemctl is preferred)"

echo -e "\nCommon Subcommands (Example using Apache HTTP Server - 'httpd'):"
echo "  systemctl status httpd  -> Shows if service is active/running or stopped."
echo "  systemctl start httpd   -> Starts the service manually."
echo "  systemctl stop httpd    -> Stops the service manually."
echo "  systemctl restart httpd -> Restarts service (Crucial after config changes)."
echo "  systemctl enable httpd  -> Activates service to start automatically at boot."
echo "  systemctl disable httpd -> Prevents service from starting automatically at boot."

echo -e "\nListing Services Options:"
echo "  systemctl                               -> Show running services."
echo "  systemctl list-units --type=service     -> List all services (active, exited, failed)."
echo "  systemctl list-units --type=service --state=active -> List active services only."


# ------------------------------------------------------------------------------
# 2. SYSTEM PERFORMANCE & MONITORING COMMANDS
# ------------------------------------------------------------------------------
echo -e "\n--> 2. SYSTEM PERFORMANCE TOOLKIT"
echo "=============================================================================="
echo " COMMAND | DESCRIPTION"
echo "=============================================================================="
echo " lscpu   | Lists detailed CPU architecture information."
echo " lshw    | Lists hardware configuration parameters."
echo " du      | Check file and directory disk space usage."
echo " df      | Disk Free - Displays total disk size and available space."
echo " fdisk   | List and modify storage partitions on the hard drive."
echo " vmstat  | Virtual Memory Statistics - Indicates virtual memory use."
echo " free    | Indicates use of physical (RAM) and swap memory."
echo " top     | Displays real-time system processes and hardware resource usage."
echo " uptime  | Indicates system run time, user count, and CPU load averages."
echo "=============================================================================="


# ------------------------------------------------------------------------------
# 3. AWS CLOUDWATCH INTEGRATION
# ------------------------------------------------------------------------------
echo -e "\n--> 3. CLOUD MONITORING WITH AMAZON CLOUDWATCH"
echo "• CloudWatch monitors health and performance of AWS resources & applications."
echo "• Tracks EC2 instances metrics such as CPU usage, disk reads, and disk writes."
echo "• Alarms can trigger automation or notifications via Amazon SNS (Simple"
echo "  Notification Service) via Email or SMS when metrics pass thresholds."


# ------------------------------------------------------------------------------
# 4. KNOWLEDGE CHECKPOINT & TROUBLESHOOTING STUDY GUIDE
# ------------------------------------------------------------------------------
echo -e "\n=============================================================================="
echo "                          CRITICAL KNOWLEDGE CHECK"
echo "=============================================================================="
echo "Q1: How might you use the top command when you are troubleshooting?"
echo "A1: If a server's CPU is maxed out, use 'top' to immediately find and isolate"
echo "    which specific Process ID (PID) is consuming resources."
echo ""
echo "Q2: Why do you restart a single service instead of rebooting the computer?"
echo "A2: A single server hosts many independent services. Rebooting the entire machine"
echo "    unnecessarily drops healthy connections and stops properly running services."
echo "    Restarting only the failed service leaves the rest of the ecosystem active."
echo "=============================================================================="

echo -e "\nManual loaded successfully."
