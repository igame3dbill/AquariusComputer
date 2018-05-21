Turn Word Wrap ON if you're using Notepad.

See also the readme.txt in the docs directory.

This is the Quick Start document.

First, unzip the files into a directory, e.g. c:\VAquarius.

Cool.

Then double-click on the AQUARIUS icon.

The emulator should now be running.

Press the RETURN key because it tells you to!



From the file menu, select Quick Type..., and from the quicktyp/GraphicFun directory, open colors.TXT.

type run
Follow the instructions on the screen!

==

After you've watched the color bars, go and read the readme.txt that's in the DOCS directory!

You can Quicktype other program text files too.

Also, CLOAD works on CAQ files.  For more information about those, see the readme.txt that's in the DOCS directory, and the readme_c.txt that's in the cassette directory.

The other software form is ROM cartridge images -- load these using Load Game ROM... on the File menu.  Some game ROMs are in the rom directory.

Enjoy!
James the Animal Tamer
2002, 2005
www.geocities.com/emucompboy






Turn Word Wrap ON if you're using Notepad.

Virtual Aquarius for Windows95/98, by James the Animal Tamer.

System Requirements:
====================
Fast system, Celeron 400MHz or equivalent recommended
Windows95/98
DirectX
16-bit video card (Virtual Aquarius will work in other modes, but may be slow or not look right)
Sound card compatible with DirectX

Known Bugs
==========
1.  You must configure the printer filename before trying to LPRINT or LLIST or COPY.
2.  The AY sound is rather loud, so don't have your speaker volume turned up.  This is not the sound that BASIC makes, but rather the sound that games like UTOPIA and TRON use.


Preliminary Note:
=================
Here's Virtual Aquarius version 0.5.  The medium number indicates that it's fun and useful as it stands, but still missing a few features.

An important feature in this early version is Quicktype (from the file menu).  This automatically types a text file.  The best way to use this is to edit a BASIC program as a text file using NOTEPAD.  Save it (from NOTEPAD).  Then use Quicktype to load it into the Virtual Aquarius.  This is much easier than trying to type in a program on the Virtual Aquarius itself (although that can be done -- beware, the suckiness of the original Aquarius keyboard is emulated in Virtual Aquarius).

If you simply MUST use the Virtual Aquarius's keyboard, you can LLIST your program, then use NOTEPAD to extract your program from the printer output file.  Save out the extracted program to another text file, and you can use the Quicktype feature to load that in.



What works:
=====================
CPU
Memory (with configuration)
Keyboard (emulated and sensible;  can be configured)
Video (Colors can be configured)
Quicktype (provides a means of loading in BASIC programs from text files)
LPRINT/LLIST/COPY (To file.  Note that COPY isn't useful -- SORRY! -- use Windows to Printscreen instead.)
BASIC CLOAD (CAQ files)
BASIC CSAVE (CAQ files)
Character set (good but not perfect)
Insertion/removal of game cartridges (Hard Reset to start the cartridge)
Joystick (in progress)
Video border (can be optionally turned off)
Accurate timing (close enough)
Optional loading of other ROM OS
Sound (In progress)
Mini-Expander (AY sound chip in progress)
Window size configuration


What does NOT work:
=====================
Insertion/removal of BASIC expansion cartridges
Insertion/removal of CP/M cartridges
Timers (if any)
Interrupts (if any)
Other peripherals (hey, I've never even SEEN the Aquarius disk drive!)
Fileform/Finform CLOAD and CSAVE


What will NEVER work:
=====================
Modem or other RS-232c interface
Any peripheral I can't analyze
Pokemon (sorry, that's for the GAME BOY)


Still left to be done:
======================
Sound configuration
Other CLOAD/CSAVE, CLOAD*, CSAVE*
Speed configuration
Load/Save WAV files
Drag and drop of supported file types



NOTES:
=====================
1.  Joysticks.  Virtual Aquarius uses DirectX for joystick input.  Virtual Aquarius is tuned for using "joypads" with six buttons.  Please note that a real Aquarius has a 16-position joypad;  unfortunately Windows provides only 8 positions for a joypad.  The joypads I'm using are Microsoft Sidewinder Game Pads.

2.  Sound.  Uses DirectSound.  It is mostly working.  Known problems include:  the AY sound is too loud.  The Directsound and CPU are not perfectly in sync, so there can be static.  I haven't put in a configuration box yet.  The sound and CPU get MORE out of sync if the program loses focus, or if you browse the menus.

3.  Keyboard.  The keyboard operates in one of two modes:  Emulated or Sensible.  Emulated mode is most like the real Aquarius keyboard;  use this mode for playing games.  Sensible makes it easier to type from the PC keyboard.  You can switch back and forth in the same session.

4.  CLOAD.  (This doesn't work for FileForm or FinForm yet).  To CLOAD a .CAQ file from BASIC, first type CLOAD.  Press the Enter key when prompted to type RETURN.  Then select Play Cassette File from the File menu, and choose your .CAQ cassette file.

5.  Game cartridges.  To use these ROMs, from Virtual Aquarius's file menu, select Load Game ROM.  Select an appropriate cartridge image (.bin file) to load.  To start the software on the cartridge, then select Hard Reset from Virtual Aquarius's file menu.





Versions:
=========
August 20 2000:
	The ability to load in an alternate OS ROM or Character ROM, moved the FPS display from being part of the window title to being drawn on the titlebar.

August 18 2000: 0.45
	Border, ability to change the window size, first attempt at speaker clicker sound, first working attempt at AY sound, reworking of the cycle constants for things like CLOAD, CSAVE, and printer.

July 30 2000: 0.4
	Better memory, "live" insertion of game cartridge, 8-direction joypads

July 17 2000: 0.3
	CLOAD, insertion of game cartridge, first attempt at proper speed.

November 1999: 0.2
	First working version, including CSAVE, Quicktype, keyboard, memory, printer.



Credits
=======
Me (James the Animal Tamer) -- Everything that's not mentioned separately below

Z80Em:		Portable Z80 emulator Copyright (C) Marcel de Kogel 1996,1997
	(I grabbed this from MAME)

ay8910.c	From MAME, credited to Ville Hallik, Michael Cuddy,Tatsuyuki Satoh, Fabrice Frances, Nicola Salmoria.

Character set	Drawn by Lyndsay Keogh

Microsoft	DirectX, Microsoft Visual C++, Microsoft Development Studio, Windows 95/98. 		 Thanks, Bill.

