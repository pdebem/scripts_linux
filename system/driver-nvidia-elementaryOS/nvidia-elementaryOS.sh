#!/bin/bash

#Install nvidia drivers in elementary OS Loki

#Ubuntu and Linux Mint users can skip STEP 1 & 2.

#STEP 1: Starting from Loki, elementary OS doesn’t support PPA. So let’s first enable it.  Launch ‘Terminal’ and run the following commands one at a time:

#sudo apt-get update
#sudo apt-get upgrade
#STEP 2: This command will enable PPA and you can use apt-get again in elementary OS.

sudo apt install software-properties-common
#STEP 3: Let’s install video graphic sources.

sudo add-apt-repository ppa:graphics-drivers/ppa
#STEP 4: Update again.

sudo apt-get update
sudo apt-get upgrade
#STEP 5: Finally you need to know which nvidia drivers should you install. You can check the latest PPA graphic builds here. Current official (Feb 2017) release is nvidia-370 (370.28). GeForce 8 and 9 series GPUs users need to use ‘nvidia-340’ (340.98) and GeForce 6 and 7 series GPUs users should be using ‘nvidia-304’ (304.132) in the command below. Use 3 digit number accordingly.

sudo apt-get install nvidia-340
#If you are still on nvidia optimus, use the bumblebee instead of above command:

sudo apt-get install bumblebee linux-headers-generic