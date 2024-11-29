*{Bench}prg-comment
* acfkont.cbl
* acfkont.cbl is generated from D:\asya\acugt.ytl\otel\acfkont.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. acfkont.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 5 Eylül 2024 Perþembe 12:18:16.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
     alphabet turkce-alfabe 1 thru 256.  
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "acfkont.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "acfkont.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "acuserve.wrk".
 copy "uzakadr.wrk".
 COPY "hrkgir.Wrk".
 copy "reffiltr.wrk".
*{Bench}copy-working
 COPY "acfkont.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "acfkont.lks".
*{Bench}end
 
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "acfkont.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-tarih.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "acfkont.dcl".

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
 COPY "acfkont.prd".
 COPY "acfkont.mnu".
 COPY "acfkont.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "konuk.lg".
 copy "ozluk.lg".
 copy "rez.lg".
 copy "musteri.lg".
 copy "yanrez.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".
 copy "reffilt.cpy".
 copy "muhaente.cpy".
 destroy-window-proc.
     destroy Form2-Handle Form1-Handle.

