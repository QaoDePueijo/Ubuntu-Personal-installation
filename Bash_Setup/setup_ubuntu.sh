#! /bin/bash

apt update

apt upgrade

apt-get install -y \
	tilix \
	python3-catkin-tools \
	python3-pip \
	python3-virtualenv \
	git \
	tmux 

dconf load /com/gexperts/Tilix/ < terminix.dconf

# Snap install
snap install -y \
	--classic code \
	spotify \
	discord


# Tweak Settings
add-apt-repository universe
apt install -y gnome-tweak-tool

# Install all extentions  for tweak

apt install -y $(apt search gnome-shell-extension | grep ^gnome | cut -d / -f1)



#install ROS Noetic
# Setup Source List
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Setup Key
sudo apt install -y curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

#Installation 

sudo apt update

# Install noetic Full
sudo apt install -y ros-noetic-desktop-full

# Source to bash
source /opt/ros/noetic/setup.bash
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Insatll dependencies 
sudo apt install -y python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

sudo rosdep init
rosdep update


# Setup Git
git config --global user.name "your-name"
git config --global user.email "your-email@here"


# Install Husky
apt-get update

apt-get install -y \
	ros-noetic-husky-desktop \
	ros-noetic-husky-simulator

export HUSKY_GAZEBO_DESCRIPTION=$(rospack find husky_gazebo)/urdf/description.gazebo.xacro

# Pip installs
pip install -y virtualenv
