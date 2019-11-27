#!/bin/bash

USER_PATH="/Users/accguest"

echo "Checking if repositories exist"
if [ ! -d "$USER_PATH/AccusonusProjects/gain-demo" ]; then \
	echo "Gain demo doesn't exist, cloning it"; \
    git clone "git@github.com:accusonus/gain-demo.git"; \
fi

if [ ! -d "$USER_PATH/SDKs/JUCE" ]; then \
	echo "JUCE doesn't exist, cloning it"; \
    git clone "git@github.com:WeAreROLI/JUCE.git"; \
fi
echo "All good, we are ready to build!"

# TODO: Use info from xcodebuild -version ad throw a warning if version < 9