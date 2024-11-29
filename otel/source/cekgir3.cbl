*{Bench}prg-comment
* cekgir3.cbl
* cekgir3.cbl is generated from D:\asya\acugt.ytl\otel\cekgir3.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. cekgir3.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 21 Kasým 2020 Cumartesi 12:20:03.
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
 COPY "cekgir3.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "cekgir3.tfd".
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
 COPY "cekgir3.wrk".
*{Bench}end
 COPY "hrkgir.Wrk".
 copy "not.lnk".
 copy "dokcagir.tasi".
 copy "kilit.lnk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "cekgir3.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "cekgir3.scr".
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
 COPY "cekgir3.prd".
 COPY "cekgir3.mnu".
 COPY "cekgir3.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "icyetki.prc".
 copy "kilit.cpy".
 copy "rez.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".
 destroy-window-proc.
     destroy Form1-Handle form2-handle.

