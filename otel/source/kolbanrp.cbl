*{Bench}prg-comment
* kolbanrp.cbl
* kolbanrp.cbl is generated from D:\asya\acugt.ytl\otel\kolbanrp.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kolbanrp.
 AUTHOR. ramazan.
 DATE-WRITTEN. 01 Nisan 2022 Cuma 09:41:15.
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
 COPY "kolbanrp.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "kolbanrp.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "uzakadr.wrk".
*{Bench}copy-working
 COPY "kolbanrp.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "kolbanrp.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kolbanrp.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-bant-rez-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "kolbanrp.dcl".

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
 COPY "kolbanrp.prd".
 COPY "kolbanrp.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
* COPY "kodlar02.lg".
