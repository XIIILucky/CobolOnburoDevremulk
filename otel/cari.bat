echo off
echo Acubench Program copy utility v3.17b
echo lutfen sadece uzantisiz yaz
pause
copy /-Y  %1.psf         c:\asya\acugt\stok\%2.psf
copy /-Y  source\%1.cbl  c:\asya\acugt\stok\source\%2.cbl
copy /-Y  copylib\%1.evt c:\asya\acugt\stok\copylib\%2.evt
copy /-Y  copylib\%1.wrk c:\asya\acugt\stok\copylib\%2.wrk
copy /-Y  copylib\%1.prd c:\asya\acugt\stok\copylib\%2.prd
copy /-Y  copylib\%1.lks c:\asya\acugt\stok\copylib\%2.lks
copy /-Y  copylib\%1.mnu c:\asya\acugt\stok\copylib\%2.mnu
copy /-Y  copylib\%1.dcl c:\asya\acugt\stok\copylib\%2.dcl
copy /-Y  copylib\%1.tsl c:\asya\acugt\stok\copylib\%2.tsl
copy /-Y  copylib\%1.tfd c:\asya\acugt\stok\copylib\%2.tfd
copy /-Y  lib-sel\%1.tsl c:\asya\acugt\stok\lib-sel\%2.tsl
copy /-Y  lib-sel\%1.tfd c:\asya\acugt\stok\lib-sel\%2.tfd
copy /-Y  scr\%1.scr     c:\asya\acugt\stok\scr\%2.scr
