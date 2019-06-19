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
sudo nano /etc/dphys-swapfile
CONF_SWAPSIZE=1000
```
## Done!
-------
