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

#dconf load /com/gexperts/Tilix/ < terminix.dconf

# Snap install
snap install -y \
	--classic code \
	spotify \
	discord

# Setup Git
git config --global user.name "your-name"
git config --global user.email "your-email@here"

# Tweak Settings
add-apt-repository universe
apt install -y gnome-tweak-tool

# Install all extentions  for tweak

apt install -y $(apt search gnome-shell-extension | grep ^gnome | cut -d / -f1)

# Pip usefull lib
pip install -y virtualenv


#Installation Work essencial 

# Install ROS Noetic
# Setup Source List
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Setup Key
sudo apt install -y curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

apt update

# Install noetic Full , Husky and dependencies 
sudo apt install -y \
	ros-noetic-desktop-full \
	python3-rosdep \
	python3-rosinstall \
	python3-rosinstall-generator \
	python3-wstool \
	build-essential \
	ros-noetic-husky-desktop \
	ros-noetic-husky-simulator

# Source to bash
source /opt/ros/noetic/setup.bash
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo rosdep init
rosdep update

export HUSKY_GAZEBO_DESCRIPTION=$(rospack find husky_gazebo)/urdf/description.gazebo.xacro

