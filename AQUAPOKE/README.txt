READ ME
AqudPoke Alpha 1
Contact : bill@igame3d.com

Disclaimer
Software is stage one prototype.
Use at your own risk. 
No claims of saftey or useability are implied.

License
GPL : see http://www.gnu.org/copyleft/gpl.html for info 
Open for you to hack around and share freely.
Source scripts are provided in "Data/AQpoke Source <os>"

Use:
Run Program : 3 windows should appear
_ Console or Command Prompt, ignore unless you program.

_ AquaTools is the program you launched, it should
display the Aquarius Basic Ascii characters.
If it doesn't then Console will say why.

When AquaTools is done loading it executes "AquaPoke/Data/pokemap.lua"

_ PokeMap provides a canvas for drawing Aquarius
characters. Additional functions for saving and
clearing the scene are provided.

When all three windows are open: 
+ Choose icons from AquaTools
+ Draw on Pokemap window
+ Save to File name in File Path
+ Save as list of Aquarius Basic POKE statements
  and/or as a list of DATA statements

Both save buttons save PSET statements
but these overload the memory on the Aquarius
A short doodle might result in something
the Aquarius can run.

After saving there will be new text files in "AquaPoke/Data/AQBASIC" 

Use Quicktype in VirtualAquarius to load the text, give it a minute.
If you get an OM error for out of memory...welcome to 1983.

If all goes well you should have your Aquarius Masterpiece.

Escape exits the program....for now.


Get VirtualAquarius:
http://www.geocities.com/emucompboy/

And you'll need an Extended Basic rom found in "AquaPoke/Data/rom"

AquaPoke is made with murgaLua
http://www.murga-projects.com/murgaLua/murgaLua.html


AquaPoke Version History:
0.0.1	0210208 It works on Mac and Windows and I'm tired!

AquaPoke BUGS 0210208:
0001 mouseDown is recorded in PokeMap when selecting in AquaTools
0002 Saving is a little goofy, It appends files instead of overwrite
0003 Saved names for Data output end with "_.txt",something is missing
0004 Two sets of scripts for windows and mac, argh!
0005 Escape key exits


	

