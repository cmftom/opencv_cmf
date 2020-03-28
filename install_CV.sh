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

# Create build directory
sudo mkdir ./opencv_build 
cd ./opencv_build

# Download the opencv
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

# Create temp build
sudo mkdir -p ./opencv_build/opencv/build 
cd ./opencv_build/opencv/build

# CMAKE
sudo cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_C_EXAMPLES=OFF \
    -D INSTALL_PYTHON_EXAMPLES=OFF \
    -D OPENCV_GENERATE_PKGCONFIG=ON \
    -D ENABLE_NEON=OFF \
    -D OPENCV_EXTRA_EXE_LINKER_FLAGS=-latomic \
    -D ENABLE_VFPV3=ON \
    -D BUILD_TESTS=OFF \
    -D OPENCV_ENABLE_NONFREE=ON \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_build/opencv_contrib/modules \
    -D BUILD_EXAMPLES=OFF ..

# Make
make -j4

# Install
sudo make install
