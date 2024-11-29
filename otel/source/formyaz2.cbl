*{Bench}prg-comment
* formyaz.cbl
* formyaz.cbl is generated from C:\Asya\acugt.ytl\otel\formyaz.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. formyaz.
 AUTHOR. muhammed.
 DATE-WRITTEN. 07 Aralýk 2011 Çarþamba 16:29:43.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "formyaz.tsl".

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "formyaz.tfd".

*{Bench}file
*{Bench}end

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".

*{Bench}copy-working
 COPY "formyaz.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "formyaz.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "formyaz.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING dosya-no, ara-dosya-no, gtop-gen.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "formyaz.dcl".

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
 COPY "formyaz.prd".
 COPY "formyaz.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.

