SET ROM_DIR=H:\ffight3p\gittest\mame0206\roms

del build\megaman_hack.bin
copy build\megaman.bin build\megaman_hack.bin

Asm68k.exe /p megaman_hack.asm, build\megaman_hack.bin

del build\megaman_chr_hack.bin
copy build\megaman_chr.bin build\megaman_chr_hack.bin

liteips.exe megaman_chr_hack.ips build\megaman_chr_hack.bin

del build\out\rcmu_23b.8f
del build\out\rcmu_22b.7f
del build\out\rcmu_21a.6f

del build\out\rcm_01.3a
del build\out\rcm_02.4a
del build\out\rcm_03.5a
del build\out\rcm_04.6a
del build\out\rcm_05.7a
del build\out\rcm_06.8a
del build\out\rcm_07.9a
del build\out\rcm_08.10a
del build\out\rcm_10.3c
del build\out\rcm_11.4c
del build\out\rcm_12.5c
del build\out\rcm_13.6c
del build\out\rcm_14.7c
del build\out\rcm_15.8c
del build\out\rcm_16.9c
del build\out\rcm_17.10c

java -jar RomMangler.jar split megaman_out_split.cfg build\megaman_hack.bin
java -jar RomMangler.jar split megaman_out_split_chr.cfg build\megaman_chr_hack.bin

del %ROM_DIR%\megaman_cps15.zip

java -jar RomMangler.jar zipdir build\out %ROM_DIR%\megaman_cps15.zip

pause