*{Bench}prg-comment
* uzatma.cbl
* uzatma.cbl is generated from D:\asya\acugt.ytl\otel\uzatma.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. uzatma IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:45:39.
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
 COPY "uzatma.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "uzatma.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
  copy "acuserve.wrk".
 copy "uzakadr.wrk".
 COPY "adres.wrk".
  COPY "xrez.lib".
   copy "link-oda.lnk".
     COPY "xrez.lib"   replacing  leading "XREZ" by "TREZ".
*{Bench}copy-working
 COPY "uzatma.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "uzatma.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "uzatma.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING LINK-ODA.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "uzatma.dcl".
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
 COPY "uzatma.prd".
 COPY "uzatma.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "icyetki.prc".
  copy "share.cpy".
  copy "break.cpy".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "konuk.lg".
 COPY "rez.lg".
 COPY "cast.lg".
