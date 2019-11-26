/*
  ==============================================================================

    GainPluginDemo.cpp
    Created: 13 Nov 2019 7:22:11pm
    Author:  Maria Kourousi

  ==============================================================================
*/

#include "GainPluginDemo.h"

//==============================================================================
// This creates new instances of the plugin..
AudioProcessor* JUCE_CALLTYPE createPluginFilter()
{
    return new GainProcessor();
}
