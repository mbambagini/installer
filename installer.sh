#! /bin/sh

tool_install='apt-get install'
tool_update='apt-get update'

echo "Standard packages"
$tool_install vim dia

echo "Extra"
$tool_install virtualbox
$tool_install alien

echo "Development packages"

echo "- Git"
$tool_install git git-email

echo "- C"
$tool_install make gcc gpp

echo "- Python"
$tool_install python virtualenv

echo "- JAVA"
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
$tool_update
$tool_install oracle-java8-installer

echo "- kernel"
$tool_install build-essential fakeroot kernel-package
$tool_install u-boot-tools zlib1g-dev libncurses5-dev

echo "- mbed"
$tool_install python-colorama python3-colorama python-jinja2
$tool_install gcc-arm-none-eabi gdb-arm-none-eabi
$tool_install putty

echo "- Web"
$tool_install apache2 mysql-server php5 phpmyadmin filezilla

echo "- latex"
$tool_install texlive texlive-base texlive-full latex-beamer latex2html

echo "- VPN"
$tool_install libcurl3 network-manager-openconnect

echo "- Pandaboard"
$tool_install device-tree-compiler lzma lzop libncurses5:i386

