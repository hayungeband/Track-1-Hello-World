// This is the Bassist class
// Authored by Asep @bepituLaz
class Bassist {
	
	//class constructor
	Moog mog => dac;
	Std.mtof(60) => mog.freq; // set the note to middle C

	// bass play for the song intro
	fun void intro(int play_note[])
	{
		for(0 => int i; i < play_note.cap(); i++) {
			Std.mtof(36+play_note[i]) => mog.freq;
		    mog.noteOn(0.5);
		    300::ms => now;
		}	
	}

	// bass play for the verse section
	fun void verse(int play_note[])
	{
		for(0 => int i; i < play_note.cap(); i++) {
			Std.mtof(36+play_note[i]) => mog.freq;
		    mog.noteOn(0.5);
		    500::ms => now;
		}
	}
}

// class implementation
Bassist bassist;

// this is the array of midi note number, look at to this link http://www.midimountain.com/midi/midi_note_numbers.html 
for(0 => int i; i < 4; i++) {
	bassist.intro([0,7,0,7,0,7,2,4]);

	if(i == 3) {
		for(0 => int x; x < 2; x++) {
			bassist.verse([0,0,4,7,5,2,2]);
		}
	}
}