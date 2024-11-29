*{Bench}prg-comment
* satgor.cbl
* satgor.cbl is generated from D:\asya\acugt.ytl\otel_ramazan\satgor.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. satgor IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 14 Mart 2017 Salý 17:08:01.
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
 COPY "satgor.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "satgor.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 copy "not.lnk".
 copy "acendft.wrk".
 COPY "frame.wrk".
*{Bench}copy-working
 COPY "satgor.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "satgor.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "satgor.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gelen-acenta.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "satgor.dcl".

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
 COPY "satgor.prd".
 COPY "satgor.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "frame.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 

