#!/bin/bash

USER_PATH="/Users/accguest"
LIBRARY_PATH="$USER_PATH/Library/Audio/Plug-Ins/Components"
GAIN_REPO_PATH="$USER_PATH/AccusonusProjects/gain-demo"

echo "Generating the ZIP file"
cd $GAIN_REPO_PATH
zip files.zip "$LIBRARY_PATH/JuceGain.component" "$GAIN_REPO_PATH/LICENCE"

echo "ZIP file generated!"