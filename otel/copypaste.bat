echo off
echo Acubench Program copy utility v3.17b
echo lutfen sadece uzantisiz yaz
pause
copy /-Y          %1.psf         %2.psf
copy /-Y   source\%1.cbl  source\%2.cbl
copy /-Y  copylib\%1.evt copylib\%2.evt
copy /-Y  copylib\%1.wrk copylib\%2.wrk
copy /-Y  copylib\%1.prd copylib\%2.prd
copy /-Y  copylib\%1.lks copylib\%2.lks
copy /-Y  copylib\%1.mnu copylib\%2.mnu
copy /-Y  copylib\%1.dcl copylib\%2.dcl
copy /-Y  copylib\%1.tsl copylib\%2.tsl
copy /-Y  copylib\%1.tfd copylib\%2.tfd
copy /-Y  lib-sel\%1.tsl lib-sel\%2.tsl
copy /-Y  lib-sel\%1.tfd lib-sel\%2.tfd
copy /-Y  lib-sel\%1.dcl lib-sel\%2.dcl
copy /-Y      scr\%1.scr     scr\%2.scr
