*{Bench}prg-comment
* primtab.cbl
* primtab.cbl is generated from D:\asya\acugt.ytl\otel\primtab.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. primtab IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:00:21.
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
 COPY "primtab.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "primtab.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "not.lnk".
 copy "opensave.def".
*{Bench}copy-working
 COPY "primtab.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "primtab.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "primtab.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gelen-acenta, Lnk-item01.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "primtab.dcl".

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
 COPY "primtab.prd".
 COPY "primtab.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy form1-handle.


