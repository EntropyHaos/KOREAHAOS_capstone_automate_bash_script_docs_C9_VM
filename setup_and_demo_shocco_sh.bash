#!/bin/sh

# This is my first bash script written to be used with the [shocco.sh][sh] 
# script for auto generating documents from comments in bash code.
#
# The **shocco.sh script** produces annotated source documentation in HTML 
# format. Comments are formatted with Markdown and presented alongside syntax 
# highlighted code. This page is the result of running `shocco` against 
# [itself][haos_shocco]!
#
# You can run set it up on Cloud9 by:
#
#     sudo apt-get install -y python-pygments
#     git clone https://github.com/rtomayko/shocco.git
#     cd shocco
#     sudo make
#     sudo make install
#
# Once installed, the `shocco` program can be used to generate documentation
# for a shell script:
#
#     shocco <your_scripts_name.sh>
#

# This script does this:
# ----------------------
#

# This line causes the script to exit if any simple command fails.
#
# Here's the [man page][set_mp]!
#

set -e

# Installs the [Python][py] [Pygments][pig] dependancy.
#

sudo apt-get install -y python-pygments

# Clones the shocco.sh repo.
#

git clone https://github.com/rtomayko/shocco.git

#
cd shocco

# Install it.
#

sudo make
sudo make install

# Creates html documents for the shocco script.
#

shocco shocco.sh >> shocco_autogen_doc_4_shocco.html

cd ..

# Creates html documents for this script!
#

shocco setup_and_demo_shocco_sh.bash >> setup_and_demo_shocco_sh.html

# (How i figured out how shocco works...)
#

# [py]: https://www.python.org/
# [pig]: https://pygments.org/
# [set_mp]: http://ss64.com/bash/set.html
# [sh]: https://github.com/rtomayko/shocco/blob/master/shocco.sh#commit

