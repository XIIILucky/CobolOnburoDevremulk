*{Bench}prg-comment
* rezbulrp.cbl
* rezbulrp.cbl is generated from C:\Asya\acugt.ytl\otelets\rezbulrp.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. rezbulrp IS INITIAL PROGRAM.
 AUTHOR. muhammed.
 DATE-WRITTEN. 22 Eylül 2007 Cumartesi 22:00:56.
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
* COPY "rezbulrp.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
 working-storage section.
 procedure division.
 aaa.
   end program.

*{Bench}file
*{Bench}end
 COPY "rezbulrp.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end

*{Bench}copy-working
 COPY "rezbulrp.wrk".
*{Bench}end
 COPY "adres.wrk".
 COPY "gunbul.wrk".
 COPY "frame.wrk".
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "rezbulrp.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "rezbulrp.dcl".


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
 COPY "rezbulrp.prd".
 COPY "rezbulrp.evt".
*{Bench}end
 COPY "dsyhata.prc".
 COPY "gunbul.prc".
 COPY "frame.prc".
 destroy-window-proc.
      destroy form2-handle form1-handle.
 COPY "rez.lg".



