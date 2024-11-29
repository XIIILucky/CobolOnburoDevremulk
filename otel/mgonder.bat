echo off
echo Acubench Program copy utility v3.17b
echo lutfen sadece uzantisiz yaz
pause
copy /Y  %1.psf         z:\%1.psf
copy /Y  source\%1.cbl  z:\source\%1.cbl
copy /Y  copylib\%1.evt z:\copylib\%1.evt
copy /Y  copylib\%1.wrk z:\copylib\%1.wrk
copy /Y  copylib\%1.prd z:\copylib\%1.prd
copy /Y  copylib\%1.lks z:\copylib\%1.lks
copy /Y  copylib\%1.mnu z:\copylib\%1.mnu
copy /Y  copylib\%1.dcl z:\copylib\%1.dcl
copy /Y  copylib\%1.tsl z:\copylib\%1.tsl
copy /Y  copylib\%1.tfd z:\copylib\%1.tfd
copy /Y  lib-sel\%1.tsl z:\lib-sel\%1.tsl
copy /Y  lib-sel\%1.tfd z:\lib-sel\%1.tfd
copy /Y  lib-sel\%1.dcl z:\lib-sel\%1.dcl
copy /Y  scr\%1.scr     z:\scr\%1.scr
