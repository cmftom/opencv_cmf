-------
## opencv
-------
# Just download the opencv.sh file and clone the opencv
```bash
sudo apt update && sudo apt upgrade
cd ~
mkdir opencv && cd opencv && sudo apt-get install git && git clone https://github.com/cmftom/opencv_cmf
```
# After the cloning, type the following commond
```bash
cd opencv_cmf
chmod +x opencv.sh
./opencv.sh -y
mv ~/opencv/opencv_cmf/opencv.sh ~/opencv

```
At the end, set conf_SWAPSIZE back
```
mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
    -D WITH_OPENGLES=ON \
    -D ENABLE_NEON=NO \
    -D ENABLE_VFPV3=NO \
    -D WITH_QT=OFF \
    -D WITH_GTK=OFF \
    -D WITH_CUDA=OFF \
    -D BUILD_opencv_java=OFF \
    -D BUILD_JAVA=NO \
    -D BUILD_TESTS=OFF \
    -D OPENCV_ENABLE_NONFREE=ON \
    -D INSTALL_PYTHON_EXAMPLES=OFF \
    -D BUILD_EXAMPLES=OFF ..
sudo nano /etc/dphys-swapfile
CONF_SWAPSIZE=1000
source /etc/dphys-swapfile
make -j4
sudo make install
sudo ldconfig
cd ~/.virtualenvs/cv/lib/python3.5/site-packages/
ln -s /usr/local/python/cv2/python-3.5/cv2.cpython-35m-arm-linux-gnueabihf.so cv2.so
cd ~

sudo nano /etc/dphys-swapfile

```
## Done!
-------
