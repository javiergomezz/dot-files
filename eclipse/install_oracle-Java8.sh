#!/bin/bash

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install pv
sudo apt-get install oracle-java8-installer

# To automatically set up the Java 8 environment variables, you can
# install the following package:
sudo apt-get install oracle-java8-set-default

# The installer requires you to accept the Oracle license before the
# installation begins. This is only required once. If for some reason
# you need the installation to be automated, you can run the following
# command to automatically accept the Oracle license:
# 
# echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
