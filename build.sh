#!/bin/bash

USER_PATH="/Users/accguest"
GAIN_DEMO_PATH="$USER_PATH/AccusonusProjects/gain-demo"
JUCE_PATH="$USER_PATH/SDKs/JUCE"
LIBRARY_PATH="/Library/Audio/Plug-Ins/"

echo "Checking into JUCE repo"
cd  $JUCE_PATH

echo "Fetching latest tags"
git fetch --tags
git checkout "tags/5.2.1"

echo "Build Projucer"
cd "./extras/Projucer/Builds/MacOSX/"
xcodebuild build

echo "Creating project files in Projucer"
./build/Debug/Projucer.app/Contents/MacOS/Projucer --resave "$GAIN_DEMO_PATH/Juce Plugin.jucer" $GAIN_DEMO_PATH/Juce\ Plugin.jucer

echo "Building the project"
cd "$GAIN_DEMO_PATH/Builds/MacOSX"
xcodebuild build

cp "$GAIN_DEMO_PATH/Builds $LIBRARY_PATH