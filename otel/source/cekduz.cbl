*{Bench}prg-comment
* cekduz.cbl
* cekduz.cbl is generated from D:\asya\acugt.ytl\otel\cekduz.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. cekduz.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:12:06.
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
 COPY "cekduz.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "cekduz.tfd".
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
 COPY "cekduz.wrk".
*{Bench}end
 COPY "hrkgir.Wrk".
 copy "not.lnk".
 copy "dokcagir.tasi".
 copy "kilit.lnk".
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "cekduz.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "cekduz.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-fol-no, link-pen, link-depkod, link-tl-tutar,
        link-onodeme-rez.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "cekduz.dcl".

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
 COPY "cekduz.prd".
 COPY "cekduz.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "icyetki.prc".
 copy "kilit.cpy".
 copy "rez.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".
 destroy-window-proc.
     destroy Form1-Handle .

