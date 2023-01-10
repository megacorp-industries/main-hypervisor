#!/bin/bash

if apt list --installed | grep -q ansible; then
  echo "======================================"
  echo "Removing ansible installed through apt"
  echo "======================================"
  sudo apt remove -y ansible
fi

export PATH="$HOME/.local/bin:$PATH"
python3 -m pip install --user ansible
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
rm get-pip.py
python3 -m pip install --user ansible
