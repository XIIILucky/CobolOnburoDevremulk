echo off
echo Acubench Program copy utility v3.17b
echo lutfen sadece uzantisiz yaz
pause
copy /Y  lib-sel\%1.lib z:\lib-sel\%1.lib
copy /Y  lib-sel\%1.sel z:\lib-sel\%1.sel
copy /Y  copylib\adres.wrk   z:\copylib\adres.wrk
copy /Y  copylib\dsyhata.prc z:\copylib\dsyhata.prc
