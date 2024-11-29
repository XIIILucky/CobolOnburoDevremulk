*{Bench}prg-comment
* formul.cbl
* formul.cbl is generated from D:\asya\acugt.ytl\otel\formul.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. formul.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:53:08.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
    syserr is mami-log.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "formul.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "formul.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "hrkgir.Wrk".
 COPY "adres.wrk".
 COPY "opensave.def".
 copy "dosyala2.wrk".

*{Bench}copy-working
 COPY "formul.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "formul.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "formul.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-acenta.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "formul.dcl".

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
 COPY "formul.prd".
 COPY "formul.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "prosif.lg". 
 COPY "formul.lg".
