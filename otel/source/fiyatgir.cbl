*{Bench}prg-comment
* fiyatgir.cbl
* fiyatgir.cbl is generated from D:\asya\acugt.ytl\otel\fiyatgir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. fiyatgir IS INITIAL PROGRAM.
 AUTHOR. Muhammed.
 DATE-WRITTEN. 26 Þubat 2024 Pazartesi 14:40:55.
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
 COPY "fiyatgir.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "fiyatgir.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 copy "not.lnk".
 copy "opensave.def".
*{Bench}copy-working
 COPY "fiyatgir.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "fiyatgir.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "fiyatgir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING gelen-acenta, Lnk-item01.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "fiyatgir.dcl".

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
 COPY "fiyatgir.prd".
 COPY "fiyatgir.mnu".
 COPY "fiyatgir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy form1-handle.
 COPY "fiyatana.lg".
 COPY "aksiyon.lg".
 copy "acenta.lg".

