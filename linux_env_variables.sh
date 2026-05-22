#!/bin/bash

# ==============================================================================
# LINUX ENVIRONMENT VARIABLES VALUE VIEWER
# ==============================================================================

# --- 1. USER & IDENTITY INFORMATION ---
export USER="${USER:-$(whoami)}"
export LOGNAME="${LOGNAME:-$USER}"
export HOME="${HOME:-/home/$USER}"
export UID="$(id -u)"

# --- 2. SHELL & TERMINAL INTERACTION ---
export SHELL="${SHELL:-/bin/bash}"
export TERM="${TERM:-xterm-256color}"
export PS1='\[\e[1;32m\]\u@\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\$ '
export PS2='> '

# --- 3. SYSTEM PATHS & BINARIES ---
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export LD_LIBRARY_PATH="/usr/local/lib:/usr/lib:$LD_LIBRARY_PATH"

# --- 4. PREFERRED SYSTEM APPLICATIONS ---
export EDITOR="nano"
export VISUAL="nano"
export PAGER="less"
export BROWSER="firefox"

# --- 5. SHELL HISTORY MANAGEMENT ---
export HISTSIZE=5000
export HISTFILESIZE=10000
export HISTCONTROL="ignoredups:ignorespace"
export HISTTIMEFORMAT="%F %T "

# --- 6. LOCALIZATION & LANGUAGE ---
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export TZ="UTC"

# --- 7. HARDWARE, GRAPHICS & X11 ---
export DISPLAY="${DISPLAY:-:0.0}"
export XAUTHORITY="$HOME/.Xauthority"

# --- 8. DEVELOPMENT RUNTIMES ---
export JAVA_HOME="/usr/lib/jvm/default-java"
export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export NODE_ENV="production"
export PYTHONSTARTUP="$HOME/.pythonrc"

# --- 9. COMPILER & BUILD FLAGS ---
export CC="gcc"
export CXX="g++"
export CFLAGS="-O2 -Wall"

# --- 10. SYSTEMD & XDG SPECIFICATIONS ---
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="/run/user/$UID"

# ==============================================================================
# FORMATTED OUTPUT BLOCK
# ==============================================================================
echo "--- Current Script Variables ---"
echo "Your user name is:                 $USER"
echo "Your logname is:                   $LOGNAME"
echo "Your home directory is:            $HOME"
echo "Your User ID (UID) is:             $UID"
echo "Your default shell is:             $SHELL"
echo "Your terminal type is:             $TERM"
echo "Your primary prompt format (PS1) is: $PS1"
echo "Your secondary prompt (PS2) is:    $PS2"
echo "Your system executable PATH is:    $PATH"
echo "Your library PATH is:              $LD_LIBRARY_PATH"
echo "Your default text editor is:       $EDITOR"
echo "Your default visual editor is:     $VISUAL"
echo "Your system terminal pager is:     $PAGER"
echo "Your default web browser is:       $BROWSER"
echo "Your history size (in memory) is:  $HISTSIZE"
echo "Your history file size (disk) is:  $HISTFILESIZE"
echo "Your history control rule is:      $HISTCONTROL"
echo "Your history time format is:       $HISTTIMEFORMAT"
echo "Your primary language setting is:  $LANG"
echo "Your global locale fallback is:    $LC_ALL"
echo "Your current timezone is:          $TZ"
echo "Your graphical X11 display is:     $DISPLAY"
echo "Your X11 authority file path is:   $XAUTHORITY"
echo "Your Java Home directory is:       $JAVA_HOME"
echo "Your Go language binary root is:   $GOROOT"
echo "Your Go workspace path is:         $GOPATH"
echo "Your Node environment mode is:     $NODE_ENV"
echo "Your Python startup script is:     $PYTHONSTARTUP"
echo "Your standard C compiler is:       $CC"
echo "Your standard C++ compiler is:     $CXX"
echo "Your default C compilation flags:  $CFLAGS"
echo "Your XDG user config directory is: $XDG_CONFIG_HOME"
echo "Your XDG user data directory is:   $XDG_DATA_HOME"
echo "Your XDG user cache directory is:  $XDG_CACHE_HOME"
echo "Your XDG runtime session path is:  $XDG_RUNTIME_DIR"
echo "--------------------------------"

#Whenever you want to check more about linux environment varibales easly type 'env'
