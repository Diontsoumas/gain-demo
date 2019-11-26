# JuceGain / gain-demo

This is a simple cross-platform (OSX and Windows) gain juce plugin. It has targets for both AU and VST.

# How to Setup / Compile

1. Clone this repo inside
    - OSX: ~/AccusonusProjects/
    - Win: c:\AccusonusProjects

2. Clone JUCE library from https://github.com/WeAreROLI/JUCE inside
    - OSX: ~/SDKs
    - Win: c:\SDKs

3. Checkout the `5.4.1` tag of the JUCE repo

4. Compile JUCE/extras/Projucer project using either XCode (version 9) or VS (version 2015)

5. Open the .jucer file of the gain-demo repo with the Projucer app you just compiled

6. Create XCode (or VS studio) project files using Projucer
(this can be done fron the command line as well using something like `Projucer --resave 'Juce Plugin.jucer'`)

7. Compile the project and (optionally) open the JuceGain plugin from a DAW.
a post build step should copy the binaries to the following folders
    - OSX: ~/Library/Audio/Plug-Ins/
    - Win: c:\Program Files\Steinberg\VSTPlugins\Accusonus
