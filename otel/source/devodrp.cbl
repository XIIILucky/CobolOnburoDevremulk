*{Bench}prg-comment
* devodrp.cbl
* devodrp.cbl is generated from D:\asya\acugt.ytl\otel\devodrp.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. devodrp IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 22 Ocak 2021 Cuma 10:09:21.
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
 COPY "devodrp.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "devodrp.tfd".
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
 COPY "devodrp.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "devodrp.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "devodrp.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-devremulk-no.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "devodrp.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-form2-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "devodrp.prd".
 COPY "devodrp.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "devfilt.cpy".
 destroy-window-proc.


