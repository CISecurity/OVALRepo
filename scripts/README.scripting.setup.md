# Get Python 3 & Required Packages

Before you can use the Python scripts bundled with this repository, you will need
to get the following pre-requisites installed and running on your machine:

- Python 3 (current stable release)
- Python 3 packages listed in requirements.txt

## Status: Work in Progress
*Please note: this documentation is a work in progress. If you have questions or suggestions, 
please [create an issue](https://github.com/CISecurity/OVALRepo/issues/new) with a full
description of your question or idea.*

## Windows Instructions

1. **Install Python 3, PIP**
   1. Download Python 3 installer from https://www.python.org/downloads/windows/
   2. Run installer, selecting "Add Python to PATH"
   3. Upgrade PIP via CLI: `python -m pip install -U pip`
2. **Install lxml from wheel** 
   1. Download the appropriate wheel file from http://www.lfd.uci.edu/~gohlke/pythonlibs/#lxml
   2. Install via CLI: `python -m pip install <downloaded wheel file>`
3. **Install Other Prerequisites**
   1. CD to OVALRepo/scripts
   2. Install via CLI: `python -m pip install -r requirements.txt`

## OSX Instructions

1. **Install Python 3**
   1. Install following these instructions https://www.python.org/downloads/OSX
   2. Upgrade PIP via CLI: `pip3 install -U pip`
2. **Install Other Prerequisites**
   1. CD to OVALRepo/scripts
   1. Install via CLI: `pip3 install -r requirements.txt`

## Linux (Debian/Ubuntu) Instructions

1. **Install Python 3**
   1. Install via CLI: `sudo apt-get install python3`
   2. Upgrade PIP via CLI: `pip3 install -U pip`
2. **Install Other Prerequisites**
   1. CD to OVALRepo/scripts
   1. Install via CLI: `pip3 install -r requirements.txt`
