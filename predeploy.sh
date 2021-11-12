#!/bin/bash
set -e

echo "Cleaning predeploy directory"
rm -rf ~/predeploy/app
mkdir ~/predeploy/app

echo "Copying files to predeploy..."
cd ~/colouring-london/app
cp -r package.json package-lock.json build map_styles ~/predeploy/app
cd ~/predeploy/app
echo "Installing production dependencies..."
npm install --production
echo "Finished preparing deployment!"
