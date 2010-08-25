/**
  tmidiinfo - list all the MIDI inputs!
  Tom Swirly (tom@swirly.com)

*/

#include "maxcpp5.h"
#include "juce_amalgamated.h"

#define DEBUG 0

inline t_symbol* gensym(const String& s) {
  // gensym incorrectly wants a char*, not a const char*, thus the const_cast.
  return gensym(const_cast<char*>(s.toCString()));
}

class TMidiIn : public MaxCpp5<TMidiIn> {
 public:
  TMidiIn(t_symbol * sym, long ac, t_atom * av) {
    setupIO(1, 1); // inlets / outlets
#if DEBUG
    post("created TMidiIn");
#endif
  }

  ~TMidiIn() {
#if DEBUG
    post("freed TMidiIn");
#endif
  }

  void bang(long) {
    midiDevicesToOutlet(true);
  }

  void handle_long(long, long value) {
    midiDevicesToOutlet(value > 0);
  }

  void midiDevicesToOutlet(bool isOutput) {
    StringArray devices = isOutput ? MidiOutput::getDevices() :
      MidiInput::getDevices();

    for (int i = 0; i < devices.size(); ++i)
      outlet_anything(m_outlet[0], gensym(devices[i]), 0, NULL);
  }
};

extern "C" int main(void) {
  // This object makes sure that Juce is initialised and shut down correctly
  // for the scope of this function call. Make sure this declaration is the
  // first statement of this function.
  const ScopedJuceInitialiser_NonGUI juceSystemInitialiser;

  TMidiIn::makeMaxClass("tmidiinfo");
  REGISTER_MAXCPP(TMidiIn, bang, NONE, bang);
  REGISTER_MAXCPP(TMidiIn, handle_long, LONG, int);
}

