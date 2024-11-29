*{Bench}prg-comment
* aceanl.cbl
* aceanl.cbl is generated from D:\asya\acugt.ytl\otel\aceanl.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. aceanl IS INITIAL PROGRAM.
 AUTHOR. salih.
 DATE-WRITTEN. 4 Haziran 2021 Cuma 11:34:42.
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
 COPY "aceanlas.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "aceanlas.tfd".
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
 COPY "aceanl.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "aceanl.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "aceanl.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gelen-acenta.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "aceanlas.dcl".

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
 COPY "aceanl.prd".
 COPY "aceanl.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "frame.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "acenta.lg".
 COPY "aceanlas.lg".

