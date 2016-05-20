#!/bin/bash

echo "Downloading Eclipse installer..."
curl -#LSo ~/Downloads/eclipse-inst-linux64.tar.gz http://www.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/oomph/epp/mars/R2/eclipse-inst-linux64.tar.gz

echo "Decompressing..."
cd ~/Downloads && \
pv eclipse-inst-linux64.tar.gz | tar xzf -

./eclipse-installer/eclipse-inst
