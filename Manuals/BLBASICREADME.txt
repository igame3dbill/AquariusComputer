BootLoader Basic is the new version to create bootable BASIC programs on the Aquarius. Together with the Virtual Aquarius, BL Basic provides a complete environment to create, test and dump your BASIC programs. No more hussle with external scripts to create your ROM.

BL Basic adds the following commands and functions:

- CLS - Clear screen
  Syntax: CLS

- LOCATE - Position on screen
  Syntax: LOCATE col, row

- OUT - I/O Output data to port
  Syntax: OUT port, data

- PSG - Program PSG directly register, value
  Syntax: PSG register, value [, ...]

- IN() - I/O Input data from port
  Syntax: n = IN( port )

- JOY() - Read joystick
  Syntax: j = JOY( n )
                 n - 0 will read left or right
                   - 1 will read left joystick only
                   - 2 will read right joystick only


- LDUMP 
  This command will export the BASIC program to ROM file using the printer interface of the Virtual Aquarius


All these commands (except LDUMP) can be used in your own ROM file as well.

To create your own BASIC ROM:

Load the BLBASIC.ROM in the Virtual Aquarius.
Next load your BASIC program by typing, quick type or load cassette.
Type the command LDUMP

IMPORTANT: Before pressing RETURN check the Virtual Aquarius printer settings!
Go to Configure -> Printer and configure the "Filename for Printer Output"
Make sure you send the output to a new file (!)

After checking the printer settings press RETURN at the LDUMP command

That's it!

Rename the output file extension from .txt to .rom or .bin and load the file into the Virtual Aquarius.

The zip file includes the following:

README.TXT - this text
BLBASIC.ROM - ROM to load into the Virtual Aquarius
SOURCE.ZIP - Z80 assembly code to create BLBASIC



Version release:

v1.0 - 04/01/2014 - First release
v1.1 - 08/01/2014 - Bug fix; Set RESTORE and redirect intermediate mode
                    Bug reported by "pset" at atariage, dd. 07/01/2014
