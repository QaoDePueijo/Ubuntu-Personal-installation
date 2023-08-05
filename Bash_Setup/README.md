# Installation Bash

This script will install some base apps and dependencies to ubuntu

Comment unessential apps and dependencies that you dont want installed.

# List of Application and dependencies.

```
Tilix (Terminal) [line 8]
Tmux (Terminal)  [line 13]
Git              [line 12]
Catkin Tools (improved catkin_make) [line 9]
Pip              [line 10]
Virtualvenv      [line 11]
Vs Code          [line 19]
Spotify          [line 20]
Discord          [line 21]
Tweak Tool       [line 28/29]
```

Pip install:

```
python virtual env [line 36]
```

It is available to install ROS. For that uncomment from the line 39 [ ##Installation Work essencial ] until the end.

# Change git config credentials

Edit line 24 and 25

-   `git config --global user.name "your.username"`
-   `git config --global user.email "your.email"`

# Run Script

Make it executable:

-   `chmod +x setup_ubuntu.sh`

Run the script:

-   `./setup_ubuntu.sh`
