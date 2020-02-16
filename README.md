-------
## It is use for download latest OpenCV for Linux (Raspberry pi)
-------
# Creat InstallCV file and clone this git inside
```
$mkdir InstallCV
$cd InstallCV 
$sudo apt-get install git 
$git clone https://github.com/cmftom/opencv_cmf
```
# After the cloning, type the following commond
```
cd opencv_cmf
chmod +x install_CV.sh
./install_CV.sh -y
```
# Try to import OpenCV in python
```
$python3
~import cv2
~print(cv2.__version__)
```
-------
