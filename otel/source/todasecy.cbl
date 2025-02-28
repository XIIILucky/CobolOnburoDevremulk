*{Bench}prg-comment
* todasecy.cbl
* todasecy.cbl is generated from D:\asya\acugt.ytl\otel\todasecy.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. todasecy IS INITIAL PROGRAM.
 AUTHOR. F�rat.
 DATE-WRITTEN. 4 Kas�m 2020 �ar�amba 16:06:34.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
        alphabet turkce-alfabe 1 thru 256.   
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "todasecy.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "todasecy.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

 copy "acendft.wrk".
*{Bench}copy-working
 COPY "todasecy.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "todasecy.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "todasecy.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING todasec-link.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "todasecy.dcl".

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
 COPY "todasecy.prd".
 COPY "todasecy.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.


