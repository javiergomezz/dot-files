#!/bin/bash

echo "Installing dependencies..."
sudo apt-get install gir1.2-webkit-3.0

echo "Downloading Eclipse installer..."
curl -#LSo ~/Downloads/eclipse-inst-linux64.tar.gz http://www.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/oomph/epp/neon/RC1/eclipse-inst-linux64.tar.gz

echo "Decompressing..."
cd ~/Downloads && \
pv eclipse-inst-linux64.tar.gz | tar xzf -

./eclipse-installer/eclipse-inst

#echo "Creating descktop launcher..."
#lxshortcut -o ~/Desktop/eclipse

echo "Due to GTK3 problems, please edit eclipse.ini file and add this line to force use GTK2: "
echo "--launcher.GTK_version 2"
