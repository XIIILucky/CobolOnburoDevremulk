*{Bench}prg-comment
* carilist.cbl
* carilist.cbl is generated from D:\asya\acugt.ytl\otel\carilist.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. carilist IS INITIAL PROGRAM.
 AUTHOR. F�rat.
 DATE-WRITTEN. 4 Kas�m 2020 �ar�amba 16:06:01.
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
 COPY "carilist.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "carilist.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 copy "not.lnk".
  copy "protasi.wrk".

 copy "acendft.wrk".
*{Bench}copy-working
 COPY "carilist.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "carilist.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "carilist.dcl".

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
 COPY "carilist.prd".
 COPY "carilist.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.


