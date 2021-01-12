#!/bin/bash
# Remove the useless files
sudo apt-get -y purge wolfram-engine
sudo apt-get -y purge libreoffice*
sudo apt-get -y clean
sudo apt-get -y autoremove

# Update the pi
sudo apt -y update

# Install the pakeage
sudo apt -y install build-essential cmake git pkg-config libgtk-3-dev "libcanberra-gtk*"
sudo apt -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev
sudo apt -y install libjpeg-dev libpng-dev libtiff-dev gfortran openexr libatlas-base-dev opencl-headers
sudo apt -y install python3-dev python3-numpy libtbb2 libtbb-dev libdc1394-22-dev

# Download the opencv
cd /opt
git clone https://github.com/opencv/opencv.git

cd /opt
git clone https://github.com/opencv/opencv_contrib.git

# Create temp build
sudo mkdir -p /opt/opencv/build
cd /opt/opencv/build

# CMAKE
sudo cmake -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib/modules \
-D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D WITH_FFMPEG=ON \
-D WITH_OPENGLES=ON \
-D ENABLE_NEON=ON \
-D ENABLE_VFPV3=ON \
-D OPENCV_ENABLE_NONFREE=ON \
-D WITH_QT=OFF \
-D WITH_GTK=OFF \
-D WITH_CUDA=OFF \
-D BUILD_opencv_java=OFF \
-D BUILD_JAVA=NO \
-D BUILD_EXAMPLES=NO \
-D BUILD_ANDROID_EXAMPLES=NO \
-D INSTALL_PYTHON_EXAMPLES=NO \
-D BUILD_DOCS=NO \
-D BUILD_opencv_python2=NO \
-D BUILD_opencv_python3=ON \
..

# Make
make -j4

# Install
sudo make install

cd
rm -rf /opt/opencv
