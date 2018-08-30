#! /bin/sh

tool_install='apt-get -y install'
tool_update='apt-get update'

$tool_update

echo "============================================"
echo "================== Common =================="
echo "============================================"
$tool_install vim dia

echo "============================================"
echo "================== Extra ==================="
echo "============================================"
$tool_install virtualbox
$tool_install alien
$tool_install gparted

echo "============================================"
echo "=================== Git ===================="
echo "============================================"
$tool_install git git-email

echo "============================================"
echo "==================== C ====================="
echo "============================================"
$tool_install make gcc gpp

echo "============================================"
echo "================== Python =================="
echo "============================================"
$tool_install python virtualenv
$tool_install python-gtk2 python-glade2

echo "============================================"
echo "=================== Java ==================="
echo "============================================"
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
$tool_update
$tool_install oracle-java8-installer

echo "============================================"
echo "================== Kernel =================="
echo "============================================"
$tool_install build-essential fakeroot kernel-package
$tool_install u-boot-tools zlib1g-dev libncurses5-dev
$tool_install bison flex pkg-config

echo "============================================"
echo "=================== Mbed ==================="
echo "============================================"
$tool_install python-colorama python3-colorama python-jinja2
$tool_install python-prettytable python3-prettytable
$tool_install python-setuptools
$tool_install gcc-arm-none-eabi gdb-arm-none-eabi
$tool_install putty

echo "============================================"
echo "=================== Web ===================="
echo "============================================"
$tool_install apache2 mysql-server php5 phpmyadmin filezilla

echo "============================================"
echo "================== Latex ==================="
echo "============================================"
$tool_install texlive texlive-base texlive-full latex-beamer latex2html

echo "============================================"
echo "=================== VPN ===================="
echo "============================================"
$tool_install libcurl3 network-manager-openconnect
$tool_install lib32z1 lib32ncurses5
$tool_install network-manager-openconnect-gnome

echo "============================================"
echo "================ Pandaboard ================"
echo "============================================"
$tool_install device-tree-compiler lzma lzop

echo "============================================"
echo "================== Manual =================="
echo "============================================"
echo "chrome"
# dpkg -i google-chrome-stable_current_amd64.deb
echo "skype"
# dpkg --add-architecture i386
# aptitude update
# aptitude install libc6:i386 libqt4-dbus:i386 libqt4-network:i386 libqt4-xml:i386 libqtcore4:i386
# libqtgui4:i386 libqtwebkit4:i386 libstdc++6:i386 libx11-6:i386 libxext6:i386 libxss1:i386 libxv1:i386
# libssl1.0.0:i386 libpulse0:i386 libasound2-plugins:i386
# wget -O skype-install.deb http://www.skype.com/go/getskype-linux-deb
# dpkg -i skype-install.deb
echo "dropbox"
# dpkg -i dropbox_2015.10.28_amd64.deb
