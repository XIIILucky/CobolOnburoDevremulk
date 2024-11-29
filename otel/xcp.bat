echo off
echo Acubench Program copy utility v3.17b
echo lutfen sadece uzantisiz yaz
pause
copy /Y  %1.psf         x:\asya\acugt.ytl\otel\%1.psf
copy /Y  source\%1.cbl  x:\asya\acugt.ytl\otel\source\%1.cbl
copy /Y  copylib\%1.evt x:\asya\acugt.ytl\otel\copylib\%1.evt
copy /Y  copylib\%1.wrk x:\asya\acugt.ytl\otel\copylib\%1.wrk
copy /Y  copylib\%1.prd x:\asya\acugt.ytl\otel\copylib\%1.prd
copy /Y  copylib\%1.lks x:\asya\acugt.ytl\otel\copylib\%1.lks
copy /Y  copylib\%1.mnu x:\asya\acugt.ytl\otel\copylib\%1.mnu
copy /Y  copylib\%1.dcl x:\asya\acugt.ytl\otel\copylib\%1.dcl
copy /Y  copylib\%1.tsl x:\asya\acugt.ytl\otel\copylib\%1.tsl
copy /Y  copylib\%1.tfd x:\asya\acugt.ytl\otel\copylib\%1.tfd
copy /Y  lib-sel\%1.tsl x:\asya\acugt.ytl\otel\lib-sel\%1.tsl
copy /Y  lib-sel\%1.tfd x:\asya\acugt.ytl\otel\lib-sel\%1.tfd
copy /Y  scr\%1.scr     x:\asya\acugt.ytl\otel\scr\%1.scr
