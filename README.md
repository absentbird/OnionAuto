# Onion Auto
A simple launch script for Onion OS to turn an SD card into a game cartridge.

Simply put the code in an executable `.sh` file and place it in the `.tmp_update/startup/` directory on the SD card.

You can find an example launch script in `launch_game.sh` or write your own following this template:

```bash
#!/bin/sh

# ROM file to launch on boot
ROM="/mnt/SDCARD/Roms/GBA/Apotris.gba"

# RetroArch core file, change based on ROM
CORE="/mnt/SDCARD/RetroArch/.retroarch/cores/mgba_libretro.so"

# RetroArch binary file, stays the same
RA_BIN="/mnt/SDCARD/RetroArch/retroarch"

# Launch game on boot, power off on exit
$RA_BIN -L $CORE "$ROM"
poweroff
```
