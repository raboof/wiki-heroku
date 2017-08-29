#!/bin/bash

echo "============================="
echo "WIKI.JS - HEROKU INSTALLATION"
echo "============================="

VERSION=1.0.6

echo "-> Fetching latest build..."
git clone https://github.com/raboof/wiki.js wiki

echo "-> Copying configuration..."
cp config.yml wiki

echo "-> Fetching dependencies..."
mkdir ./wiki/node_modules
curl -L -s -S https://github.com/Requarks/wiki/releases/download/v$VERSION/node_modules.tar.gz | tar xz -C ./wiki/node_modules

echo "-> Installation Complete"
