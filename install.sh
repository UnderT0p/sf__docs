#!/bin/bash
sudo apt -y upgrade
sudo apt install -y python3-pip
pip3 install "pelican[markdown]"
export PATH="$HOME/.local/bin:$PATH"
