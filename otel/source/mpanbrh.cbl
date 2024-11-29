*{Bench}prg-comment
* mpanbrh.cbl
* mpanbrh.cbl is generated from D:\asya\acugt.ytl\otel\mpanbrh.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. mpanbrh.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:58:41.
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
 COPY "mpanbrh.tsl".
 DATA                        DIVISION.

 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "mpanbrh.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "winprint.def".
 copy "fiyhes.wrk".
  copy "gunbul.wrk".
 copy "reffiltr.wrk".
 copy "mana3brh.wrk". 
 copy "filtr.wrk".
*{Bench}copy-working
 COPY "mpanbrh.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "mpanbrh.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "mpanbrh.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-ilk-tarih, link-son-tarih, link-dov, link-tutar, link-occ,
        link-kdvsiz, link-referans.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "mpanbrh.dcl".

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
 COPY "mpanbrh.prd".
 COPY "mpanbrh.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "rezfilt.cpy".
 copy "fiyhes.cpy".
 copy "gunbul.prc".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.

     
     .

