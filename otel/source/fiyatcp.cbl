*{Bench}prg-comment
* fiyatcp.Cbl
* fiyatcp.Cbl is generated from C:\Asya\acugt.ytl\otel\fiyatcp.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. fiyatcp IS INITIAL PROGRAM.
 AUTHOR. muhammed.
 DATE-WRITTEN. 10 Aðustos 2005 Çarþamba 02:26:44.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "fiyatcp.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "fiyatcp.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "fiyatcp.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "fiyatcp.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "fiyatcp.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING fiyatcp-cagir.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "fiyatcp.dcl".

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
 COPY "fiyatcp.prd".
 COPY "fiyatcp.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy form1-handle.