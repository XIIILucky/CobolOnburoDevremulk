*{Bench}prg-comment
* satgir.cbl
* satgir.cbl is generated from D:\asya\acugt.ytl\otel_ramazan\satgir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. satgir IS INITIAL PROGRAM.
 AUTHOR. ramazan.
 DATE-WRITTEN. 22 Mart 2017 Çarþamba 11:26:58.
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
 COPY "satgir.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "satgir.tfd".
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
 copy "opensave.def".
 copy "mails.wrk".
*{Bench}copy-working
 COPY "satgir.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "satgir.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "satgir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-fis-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "satgir.dcl".

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
 COPY "satgir.prd".
 COPY "satgir.mnu".
 COPY "satgir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "frame.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "aceanlas.lg".
 COPY "fiyatana.lg".

