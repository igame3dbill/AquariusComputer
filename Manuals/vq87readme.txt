Turn Word Wrap ON if you're using Notepad.

Virtual Aquarius for Windows 98SE, by James the Animal Tamer.  May work with other versions of (95 or later) Windows.  May not.  Let me know.

HOME PAGE:
==========
www.geocities.com/emucompboy
Home of the Virtual Aquarius

CONTACT:
========
emucompboy@yahoo.com

NOTE to ROM IMAGE COLLECTORS:
=============================
1.  It's okay to put the emulator archive up for download on your website.  If you do put it up, I ask that you include on your website a link to James the Animal Tamer's Emulators (www.geocities.com/emucompboy), as this emulator's home page.  The emulators are works in progress, and I will randomly be updating them, and not necessarily notifying you about it.
2.  You may not charge money for my work.
3.  You may not include any of my emulators or any of my content on any collection or compilation for which you intend to charge money (unless you plan on sending some money to me, Microsoft, Mattel, Add-On Electronics, and any other relevant copyright or license holders).
4.  I'd prefer that you do not unbundle software or other files that are contained within one of my emulator archives (like, how useful is that ROM image going to be without the emulator to run it?).  That said, I'd be pleased if you make enhanced variants on the computer software and offer those up on your own site.  I'd be MIGHTILY PLEASED if you'd write an improved version of Reversi or Checkers.
5.  Oh, please don't link directly to the file names on my site.  I change them with each upate!
Thanks.

System Requirements:
====================
Fast system, Celeron 400MHz or equivalent recommended
Windows98 or newer
DirectX 6 or newer
16-bit video card (Virtual Aquarius will work in other modes, but may be slow or not look right)
Sound card compatible with DirectX


Known Bugs
==========
1.  You must configure the printer filename before trying to LPRINT or LLIST or COPY.
2.  You might want to double-check filenames when saving.  If the save directory does not exist, then the output file won't be written -- and there's no warning about that.
3.  The AY sound chip updates every screen frame (1/60th of a second, default).  The emulator therefore does not emulate complex sound changes needed for AY speech or AY digitized sound effects.
4.  Expansion RAM is not scrambled by the cartridge security (XOR)
5.  The sound and CPU speeds are not exactly matched.  During periods of silence, the emulator will attempt to resynch them.  If there aren't periods of silence, then sound and CPU will become increasingly out of synch, eventually leading to awful static.  Looking at the ABOUT box will force a resynch.
6.  Soft reset also resets the AY-3-8910 sound chip.
7.  The emulator is a CPU hog.  When running the emulator, having other CPU hogs running will prevent the emulator from running at a constant speed.  CPU hogs include but are not limited to any Microsoft Office product, Microsoft Outlook, any internet browser program, 'instant messenger' programs, internet telephone programs, pop-up blockers, virus/spyware scanners, some obnoxious screensavers, viruses, rootkits, worms, spyware, adware, other emulators.  Beware, some of these hogs will have installed themselves so that they will run when Windows starts up, or so that if run once, they'll still be running at 'stand-by' even if you've closed the program.  To summarize, if your desktop tray is loaded with gadgets that notify you of some event or animate or periodically do something, then the emulator will not be running at a constant 99-100% speed reliably no matter how fast your CPU is.
8.  Quicktype does not work with LOGO.  Quicktype is useful only for entering BASIC programs from text files (which is very useful indeed!).


Preliminary Note:
=================
Here's Virtual Aquarius version 0.72.  The medium number indicates that it's fun and useful as it stands, but still missing a feature/convenience or two.

An important feature for BASIC programmers is Quicktype (from the file menu).  This automatically types a text file.  The best way to use this is to edit a BASIC program as a text file using NOTEPAD.  Save it (from NOTEPAD).  Then use Quicktype to load it into the Virtual Aquarius.  This is much easier than trying to type in a program on the Virtual Aquarius itself (although that can be done -- beware, the suckiness of the original Aquarius keyboard is emulated in Virtual Aquarius).

If you prefer to use the Virtual Aquarius's keyboard anyway, you can LLIST your program, then use NOTEPAD to extract your program from the printer output file.  Save out the extracted program to another text file, and you can use the Quicktype feature to load that in.



What works:
=====================
CPU
Memory (with configuration)
Keyboard (emulated and sensible;  can be configured)
Video (Colors can be configured)
Quicktype (provides a means of loading in BASIC programs from text files)
LPRINT/LLIST/COPY (To file.  Note that COPY isn't useful -- SORRY! -- use Windows to Printscreen instead.)
BASIC CLOAD (CAQ files;  partial support for raw WAV files)
BASIC CSAVE (CAQ files)
Character set (good but not perfect)
Insertion/removal of game cartridges (you need to Hard Reset to start the cartridge)
Joystick (working, but not configurable at present)
Video border
Accurate timing (close enough, or configure your own)
Optional loading of other ROM OS
Sound (mostly working)
Mini-Expander (mostly working)
Window size configuration
Fileform/Finform CLOAD and CSAVE (to CAQ files)


What does NOT work:
=====================
Insertion/removal of $2000 BASIC expansion cartridges
CP/M cartridges or other remapping software
Timers (if any)
Interrupts (if any)
Other peripherals (hey, I've never even SEEN the Aquarius disk drive!)



What will NEVER work:
=====================
Modem or other RS-232c interface
Any peripheral I can't analyze
Pokemon (sorry, that's for the GAME BOY)
Save WAV files (use CAQ2WAV instead)
Drag and drop of supported file types


Still left to be done:
======================
Make the keyboard configuration interface more friendly
Joystick configuration (right now it just grabs the first two joysticks, and the first six buttons on each)
TPD (Tape Pulse Data) loading and saving
Simple debugger
LST-level debugger
Emulate the pen-platen plotter (don't hold your breath)
Put the emulator on a separate thread so the program will be more system-friendly.
Implement joystick half-diagonals
Disk drives

NOTES:
=====================
1.  Joysticks.  Virtual Aquarius uses DirectX for joystick input.  Virtual Aquarius is tuned for using "joypads" with six buttons.  Please note that a real Aquarius has a 16-position joypad;  unfortunately Windows provides only 8 positions for a joypad or a digital POV hat pad.  The joypads I'm using are Microsoft Sidewinder Game Pads.

2.  Sound.  Uses DirectSound.  It is mostly working.  Known problems include:  The Directsound and CPU emulation are not perfectly in sync, so there can be static.  Note that if your computer is not running the Aquarius emulator at a fairly steady 100%, then the sound won't be right and may have problems.  The sound can be VERY LOUD;  in the Sound Configuration box, the default is 50%.  I recommend you don't make it any louder (I am not responsible for damage to your speakers in any case).

3.  Keyboard.  The keyboard operates in one of two modes:  Emulated or Sensible.  Emulated mode is most like the real Aquarius keyboard;  use this mode for playing games.  Sensible makes it easier to type from the PC keyboard.  You can switch back and forth in the same session.

4.  CLOAD.  To CLOAD a .CAQ file from BASIC, first type CLOAD.  Press the Enter key when prompted to type RETURN.  Then select Play Cassette File from the File menu, and choose your .CAQ cassette file.  Similarly with FileForm and FinForm, initiate the Load first, then select Play Cassette File from the File menu.


5.  Game cartridges.  To use these ROMs, from Virtual Aquarius's file menu, select Load Game ROM.  Select an appropriate cartridge image (.bin file) to load.  To start the software on the cartridge, then select Hard Reset from Virtual Aquarius's file menu.


Look it up on the internet!
===========================
Millypede site
http://aquariuscomputer.tripod.com/
maintained by Peter Schlepphorst

Page of Aquarius
http://hometown.aol.com/paparotcy/aquarius/index.html
http://members.aol.com/paparotcy/aquarius/index.html
Maintained by Paparotcy

Intellivision Lives! story of Aquarius
http://www.intellivisionlives.com/bluesky/hardware/aquarius_tech.html

AqEmu -- the Mattel Aquarius information repository
http://www.classicgaming.com/AqEmu/
(Virtual Aquarius uses his character set)

http://www.vdsteenoven.com/aquarius/
Maintained by M. v.d. Steenoven

Mattel Aquarius Yahoo group
http://groups.yahoo.com/group/mattelaquarius/

Small C development for several z80 computers, including Aquarius
http://z88dk.sourceforge.net/

Home of the Virtual Aquarius
www.geocities.com/emucompboy
Maintained by James the Animal Tamer



Versions:
=========
December 30 2005:  0.72
	Added ROM, cassette, and Quicktype images from several different sources.
	Util/WAV->CAQ logger. It's enabled if ROM Hacks are enabled. With this selected, the emulator will write out a CAQ file for WAV data it attempts to read during a normal cload/cload* operation. Please note that cload truncates files when it reaches some number of nulls. Also, cload* truncates files when it reaches the end of the array it's loading. And, of course, the Aquarius tape format has no checksums or qualtiy-of-data checks, so it's entirely possible for framing errors to occur and you'd never know about it. Caveat Emptor.  You might want to wait for someone to write a real WAV2CAQ utility.
	Slightly changed WAV file handling, which, I hope, makes it more like the real computer. The real computer won't change state unless the input level hits a certain point, which smoothes out noise. Also, previous versions of the emulator were reading the waveform inverted; that's been fixed.
	Fixed WAV loading to recognize WAVs written by programs that don't do the header right (which unfortunately includes most sound editors, but not the one I use so I didn't know about this problem).
	The power up beep now works reliably.  The emulation is now delayed until well after the window appears on the screen, but you didn't need to know that.
	Full Screen mode can now access the menus. Right click on the full screen to toggle menus.
	ROM Hacks are enabled by default. ROM Hacks provide emulation trapping for faster I/O for cassette input, cassette output, and printer output. This feature is available only when using the built-in S2 ROM.
	Save RAM behavior changed; now the file is saved to the directory the program was run from.
	Save RAM behavior changed; now filters memory through the cartridge scrambler.
	Fixed a bug in which bringing up a dialog box would zero the AY sound registers.
	You can't turn off the border any more.  On the plus side, you got Full Screen mode.  On the minus side, you need a better computer to run Virtual Aquarius.  But then, your computer is probably newer than mine anyway (mine is from, like, 1998), and mine runs it just fine.
	The sound buffers will attempt to resynch themselves when no sound has been playing for a while (a half-second or so). This is detected by the speaker clicker not being written to and by the three AY chip volumes being set to 0.
	The POV hat can be used as the control disk in a modern USB joypad.
	The Help/About box has my newer pictures on it. :)
	Util/Load Binary -- This is useful for assembly language program development.
	Util/Screenshot (F11)
	Util/Full Screen mode (F12 to toggle)
	Util/Paste -- this Quicktypes text that was on the text clipboard, i.e. Copy from Notepad and Paste onto Virtual Aquarius.
	Some file access routines are smarter about remembering which file you were using last.  It takes getting used to, but it really is better than before.  Really.
	The emulator should no longer crash when you have Configure/System Timing>Speed up when accessing files checked.
	Soft Reset is now F9 on the keyboard.
	Hard Reset is now Shift F9 on the keyboard.


April 3 2002:  0.71
	Added a couple of ROM images.
	Added a couple of cassette images.
	Added my picture to the About box :)

July 22 2001:  0.7
	Added TOOLS directory.  See the readme there to learn about tools.
	Added a couple of ROM images to this zip archive.
	Added limited support for CLOADing raw WAV files.  These files must be recorded at 44,100 samples per second, 8-bit, mono -- and must presumably have been CSAVEd from a real Aquarius.  PLEASE NOTE:  the emulator will not load in WAV files created with CAQ2WAV.  I am still trying to figure out why.
	Fixed an annoying border bug, in which the border got wrecked by overlaid windows.

August 30 2000: 0.6
	Sound configuration dialog box.
	Fixed the "sound while browsing menus" looping problems.
	Speed configuration dialog box.
	Fixed CLOAD/CSAVE for FileForm and FinForm
	Added in a filename requester when cassette output is detected.
	Replacement of the FPS display with a % performance display (where 100% is defined as how fast a real NTSC Aquarius would be going).
	Better handling for locations of files (I hope).

August 20 2000: 0.5
	The ability to load in an alternate OS ROM or Character ROM
	Moved the FPS display from being part of the window title to being drawn on the titlebar.

August 18 2000: 0.45
	Border, ability to change the window size, first attempt at speaker clicker sound, first working attempt at AY sound, reworking of the cycle constants for things like CLOAD, CSAVE, and printer.
	Virtual Aquarius is the best Aquarius emulator.

July 30 2000: 0.4
	Better memory, "live" insertion of game cartridge, 8-direction joypads

July 17 2000: 0.3
	CLOAD, insertion of game cartridge, first attempt at proper speed.

November 1999: 0.2
	First working version, including CSAVE, Quicktype, keyboard, memory, printer.
	NOTE: This predates AqEmu and the MESS driver.  Virtual Aquarius was the first Aquarius emulator.

Credits
=======
Me (James the Animal Tamer) -- Everything that's not mentioned separately below

Z80Em:		Portable Z80 emulator Copyright (C) Marcel de Kogel 1996,1997
	(I grabbed this from MAME)

ay8910.c	From MAME, credited to Ville Hallik, Michael Cuddy,Tatsuyuki Satoh, Fabrice Frances, Nicola Salmoria.

Character set	Drawn as bitmap by Lyndsay Keogh for AqEmu.

Microsoft	DirectX, Microsoft Visual C++, Microsoft Development Studio, Windows 95/98.  Thanks, Bill.

ROMs and some .CAQ files:	See those for their respective credits.

Moral Support and Inspiration:
		The good people of the Yahoo Mattel Aquarius group
		Frustum, author of Solace SOL-20 emulator.  Dude, I have debugger envy something fierce!
		Jeri Ellsworth.  Her dedication to the Commodore 64 means I can do something else, like making emulator archives for the MC-10.  LOL.

