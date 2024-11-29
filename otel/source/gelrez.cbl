*{Bench}prg-comment
* gelrez.cbl
* gelrez.cbl is generated from D:\asya\acugt.ytl\otel\gelrez.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. gelrez.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 1 Haziran 2024 Cumartesi 13:59:02.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "gelrez.tsl".
               select wlog assign to random, 
              "/asya/ytl/log/wlogsrv.txt",
              organization line sequential
              status fs-wlog.  
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "gelrez.tfd".
fd wlog label record standard.
01 wlog-rec.
          02 wlog-anah.                                                   
             03 wlog-tarih             pic x(08).
             03 filler                  pic x.
             03 wlog-zaman             pic x(08).
             03 filler                  pic x.
          02 wlog-data          pic x(200).

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "filtr.wrk".
 copy "mails.wrk".
 copy "reffiltr.wrk".
 copy "winprint.def".
  COPY "fonts.def".
*{Bench}copy-working
 COPY "gelrez.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
     copy "forlink.wrk".

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "gelrez.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "gelrez.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "gelrez.prd".
 COPY "gelrez.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "grezfilt.cpy".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.