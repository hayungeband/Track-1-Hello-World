// This is the Bassist class
// Authored by Asep @bepituLaz
class Bassist {
	
	//class constructor
	Moog mog => dac;
	Std.mtof(60) => mog.freq; // set the note to middle C

	[0,2,3,1,4,2,6,3,4,4] @=> int mel[]; //sequence data

	// bass play for the song intro
	fun void intro(int play_note[])
	{
		<<< mel.cap() >>>;
		for(0 => int i; true; i++) {
			Std.mtof(36+play_note[i%mel.cap()]) => mog.freq;
		    mog.noteOn(0.5);
		    300::ms => now;
		}	
	}
}

// class implementation
Bassist bassist;
bassist.intro([0,0,7,7,2,2,4,7,2,2]); // this is the array of midi note number, look at to this link http://www.midimountain.com/midi/midi_note_numbers.html 