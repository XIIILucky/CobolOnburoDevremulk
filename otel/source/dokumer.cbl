*{Bench}prg-comment
* dokumer.cbl
* dokumer.cbl is generated from D:\asya\acugt.ytl\otel\dokumer.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. dokumer IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 10 Þubat 2021 Çarþamba 14:43:06.
 REMARKS. 
*{Bench}end
 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 OBJECT-COMPUTER.
      NITALLICA
      COLLATING SEQUENCE TURKCE-ALFABE.
 SPECIAL-NAMES.
        syserr is debug,
        switch-1 on status is program-versiyon-kontrol,

        COPY "excel_ole.def".
       alphabet turkce-alfabe 1 thru 256.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "dokumer.tsl".
 copy "dokumer.tslx". || Onburo ozel tsl'si
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "dokumer.tfd".
 copy "dokumer.tfdx". || Onburo ozel tfdsi
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "winhelp.def".
 COPY "opensave.def".
 COPY "winprint.def".                          
 COPY "fonts.def".
 copy "activex.def".
 copy "keyprog.def".
 copy "frame.wrk".
 copy "reffiltr.wrk".
 copy "kvkkywrk.wrk".
*{Bench}copy-working
 COPY "dokumer.wrk".
*{Bench}end
 copy "dokumer.wrx". || ozel onburo degiskenleri
**************OLE WRK*******************
 01 excel-objects. 
    03 hexcelapp  handle of application of excel. 
    03 hexcelwkb  handle of workbook    of excel. 
    03 hexcelwks  handle of worksheet   of excel. 
    03 hrange     handle of range       of excel. 
****************************************
 01 suz-dokumer-buffer.
    02 filler          pic x(21).
    02 suz-buffer      pic x(data-dokumer-length).

 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "dokumer.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "dokumer.scr".
*{Bench}end
*{Bench}linkpara
 PROCEDURE DIVISION USING dokumer-link-bilgiler.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "dokumer.dcl".
 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Form0-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .
*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "dokumer.prd".
 COPY "dokumer.mnu".
 COPY "dokumer.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "frame.prc".
 copy "dokumer.nrg".
 COPY "kvkky.cpy".
 destroy-window-proc.
      destroy form0-handle form1-handle form2-handle
      form3-handle form4-handle.