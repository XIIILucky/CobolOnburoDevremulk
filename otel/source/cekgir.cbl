*{Bench}prg-comment
* cekgir.cbl
* cekgir.cbl is generated from D:\asya\acugt.ytl\otel\cekgir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. cekgir.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 26 Aðustos 2024 Pazartesi 16:31:02.
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
 COPY "cekgir.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "cekgir.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "rout.wrk".
*{Bench}copy-working
 COPY "cekgir.wrk".
*{Bench}end
 COPY "hrkgir.Wrk".
 copy "not.lnk".
 copy "dokcagir.tasi".
 copy "kilit.lnk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "cekgir.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "cekgir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-fol-no, link-pen, link-depkod, link-tl-tutar,
        link-onodeme-rez.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "cekgir.dcl".

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
 COPY "cekgir.prd".
 COPY "cekgir.mnu".
 COPY "cekgir.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "icyetki.prc".
 copy "kilit.cpy".
 copy "rez.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".
 destroy-window-proc.
     destroy Form1-Handle form2-handle.

