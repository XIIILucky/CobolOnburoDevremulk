*{Bench}prg-comment
* cekgir2.cbl
* cekgir2.cbl is generated from D:\asya\acugt.ytl\otel\cekgir2.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. cekgir2.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:55:35.
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
 COPY "cekgir2.wrk".
*{Bench}end
 COPY "hrkgir.Wrk".
 copy "not.lnk".
 copy "dokcagir.tasi".

 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "cekgir2.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "cekgir2.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING 
        link-fol-no, link-pen, link-depkod, link-tl-tutar.
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
 COPY "cekgir2.prd".
 COPY "cekgir2.mnu".
 COPY "cekgir2.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "icyetki.prc".
 destroy-window-proc.
     destroy Form1-Handle form2-handle.
 copy "romhrk.lg".
 copy "exthrk.lg".

