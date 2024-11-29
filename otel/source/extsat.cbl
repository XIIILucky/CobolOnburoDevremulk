*{Bench}prg-comment
* extsat.cbl
* extsat.cbl is generated from D:\asya\acugt.ytl\otel\extsat.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. extsat.
 AUTHOR. salih.
 DATE-WRITTEN. 5 Ekim 2021 Salý 10:27:14.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "extsat.tsl".

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "extsat.tfd".

*{Bench}file
*{Bench}end

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".

*{Bench}copy-working
 COPY "extsat.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "extsat.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "extsat.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING l-oda, l-folio, l-dep, l-sat, l-bos.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "extsat.dcl".

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
 COPY "extsat.prd".
 COPY "extsat.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 copy "extpost.lg".

