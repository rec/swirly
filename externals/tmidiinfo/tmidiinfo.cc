/**
	tmidiinfo - list all the MIDI inputs!
  Tom Swirly (tom@swirly.com)

*/

#include "maxcpp5.h"
#include "juce_amalgamated.h"

class TMidiIn : public MaxCpp5<TMidiIn> {
 public:
	TMidiIn(t_symbol * sym, long ac, t_atom * av) {
		setupIO(1, 1); // inlets / outlets
		post("created TMidiIn");
	}

	~TMidiIn() {
    post("freed TMidiIn");
  }

	void bang(long inlet) {
    output(true);
	}

  void handle_long(long inlet, long v) {
    output(v > 0);
  }

	void output(bool isOutput) {
    StringArray devices = isOutput ? MidiOutput::getDevices() :
      MidiInput::getDevices();

    for (int i = 0; i < devices.size(); ++i)
      outlet_anything(m_outlet[0], gensym((char*) devices[i].toCString()), 0, NULL);
	}

 private:
  // std::vector<t_atom> atoms_;
};

extern "C" int main(void) {
  // This object makes sure that Juce is initialised and shut down correctly
  // for the scope of this function call. Make sure this declaration is the
  // first statement of this function.
  const ScopedJuceInitialiser_NonGUI juceSystemInitialiser;

	// create a class with the given name:
	TMidiIn::makeMaxClass("tmidiinfo");
	REGISTER_MAXCPP(TMidiIn, bang, NONE, "bang");
	REGISTER_MAXCPP(TMidiIn, handle_long, LONG, "int");
}

