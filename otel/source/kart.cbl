*{Bench}prg-comment
* kart.cbl
* kart.cbl is generated from D:\asya\acugt.ytl\otel\kart.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kart IS INITIAL PROGRAM.
 AUTHOR. kadir.
 DATE-WRITTEN. 6 Ekim 2022 Per�embe 11:02:16.
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
 copy "kart.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 copy "kart.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "kart.wrk".
*{Bench}end
 copy "dokcagir.tasi".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "kart.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kart.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING LINK-FOLIO, LINK-KARTNO, link-islem.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "kart.dcl".

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
 COPY "kart.prd".
 COPY "kart.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy form1-handle.
 COPY "kart.lg".

