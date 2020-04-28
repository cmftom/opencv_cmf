-------
## It is use for download latest OpenCV for Linux (Raspberry pi)
```
$ pip3 install opencv-python
$ sudo apt-get install libatlas-base-dev libjasper-dev libqtgui4 python3-pyqt5 -y
```
Can already install opencv-4.1

-------
# Clone this git inside
```
$sudo apt-get install git 
$git clone https://github.com/cmftom/opencv_cmf
```
# After the cloning, type the following commond
```
cd opencv_cmf
chmod +x install_CV_pizero.sh
sudo ./install_CV_pizero.sh -y
```
# Try to import OpenCV in python
```
$python3
~import cv2
~print(cv2.__version__)
```
-------
