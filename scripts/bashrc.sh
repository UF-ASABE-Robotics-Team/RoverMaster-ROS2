# Source user environment file, if exists
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
elif [ -f ~/.bash_profile ]; then
    source ~/.bash_profile
elif [ -f ~/.profile ]; then
    source ~/.profile
fi
# Source ROS2 setup.bash file
if [ -f install/local_setup.bash ]; then
    source install/setup.bash
else
    echo "ROS2 workspace not found at $PWD. Please build the workspace first."
    read -n 1 -s -r -p "Press any key to exit..."
    exit 1;
fi
# Rewrite the PS1 prompt to highlight current ROS2 environment
export WS=$(pwd)
export PS1="\033[01;32mROS2::$(basename $WS)\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]\$ "
