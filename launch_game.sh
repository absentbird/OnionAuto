#!/bin/sh

### Set the game and core to play
CORE="mgba_libretro.so"
ROM="GBA/Apotris.gba"
### Leave the rest unchanged

# RetroArch binary file location
RA_BIN="/mnt/SDCARD/RetroArch/retroarch"

# Directory for RetroArch cores
COREDIR="/mnt/SDCARD/RetroArch/.retroarch/cores/"

# Directory for RetroArch roms
ROMSDIR="/mnt/SDCARD/Roms/"

# Launch game on boot, power off on exit
$RA_BIN -L $COREDIR$CORE "$ROMSDIR$ROM"
poweroff
