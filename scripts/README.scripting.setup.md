# Get Python 3.4 & Required Packages

Before you can use the Python scripts bundled with this repository, you will need
to get the following pre-requisites installed and running on your machine:

- Python 3.4.3
- Python 3.4 Packages:
  - gitdb (version 0.6.4)
  - GitPython (version 1.0.1)
  - lxml (version 3.4.4)
  - smmap (version 0.9.0)
  - Whoosh (version 2.7.0)

## Status: Work in Progress
*Please note: this documentation is a work in progress. If you have questions or suggestions, 
please [create an issue](https://github.com/CISecurity/OVALRepo/issues/new) with a full
description of your question or idea.*

## Windows Instructions

1. **Install Python 3.4.3**
  1. Install following these instructions https://www.python.org/downloads/windows/
  2. Add `C:\Python34` to `PATH` (assuming you installed to the default location)
  3. Upgrade PIP via CLI: `python -m pip install -U pip`
2. **Install lxml from wheel** 
  1. Download the appropriate wheel file from http://www.lfd.uci.edu/~gohlke/pythonlibs/#lxml
  2. Install via CLI: `python -m pip install <downloaded wheel file>`
3. **Install Other Prerequisites**
  1. CD to OVALRepo/scripts
  1. Install via CLI: `python -m pip install -r requirements.txt`

## OSX Instructions

1. **Install Python 3.4.3**
  1. Install following these instructions https://www.python.org/downloads/OSX
  2. Upgrade PIP via CLI: `pip3 install -U pip`
2. **Install Other Prerequisites**
  1. CD to OVALRepo/scripts
  1. Install via CLI: `pip3 install -r requirements.txt`

## Linux (Debian/Ubuntu) Instructions

1. **Install Python 3.4.3**
  1. Install via CLI: `sudo apt-get install python3`
  2. Upgrade PIP via CLI: `pip3 install -U pip`
2. **Install Other Prerequisites**
  1. CD to OVALRepo/scripts
  1. Install via CLI: `pip3 install -r requirements.txt`