
Aquarius Bootloader v2
Date: April, 15th 2013


The ZIP file contains the following files:

* BOOTLDR.DAT - The cartridge boot procedure
* Caq2Bootload.vbs - Visual Basic Script whichs merges your CAQ file to the BOOTLDR.DAT (plus minor modifications to the .CAQ)
* Bootloader.asm - The Z80 assembly used to created BOOTLDR.DAT
* test folder containing several BASIC files that have been tested
* README.TXT - This text

First, create your Aquarius BASIC program and save it, using the Virtual Aquarius, as a CAQ file.
Place the files BOOTLDR.DAT and Caq2Bootload.vbs in the same folder (e.g. your desktop
Drag your CAQ file over Caq2Bootload.vbs and drop it.
A file with the extension .BIN will be created in the same folder as the .CAQ file
Or by command prompt:

[CODE]C> cscript Caq2Bootload.vbs bomber_bas.caq[/CODE]

Load the cartridge in your Virtual Aquarius.
Once the bootloader is active it will no longer go to the immediate mode, you will not be able give any BASIC commands.
If you press CTRL+C or if an error occurs the BASIC program will restart (RUN)

Please note:
The CAQ file and the BOOTLDR.DAT cannot exceed 16K

Any comments are welcome.

Enjoy!

Regs,
Martin

