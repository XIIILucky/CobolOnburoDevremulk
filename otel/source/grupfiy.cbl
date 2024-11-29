*{Bench}prg-comment
* grupfiy.cbl
* grupfiy.cbl is generated from D:\asya\acugt.ytl\otel\grupfiy.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. grupfiy.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:57:42.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "grupfiy.tsl". 
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "grupfiy.tfd". 
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
*{Bench}copy-working
 COPY "grupfiy.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "grupfiy.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "grupfiy.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-grupfiy.
*{Bench}end
*{Bench}declarative
*{Bench}end

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
 COPY "grupfiy.prd".
 COPY "grupfiy.evt".
*{Bench}end
 COPY "dsyhata.prc". 
 destroy-window-proc.
     destroy Form1-Handle.
 copy "grupfiy.lg".
