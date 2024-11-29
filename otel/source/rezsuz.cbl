*{Bench}prg-comment
* rezsuz.cbl
* rezsuz.cbl is generated from D:\asya\acugt.ytl\otel\rezsuz.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. rezsuz.
 AUTHOR. ramazan.
 DATE-WRITTEN. 17 Haziran 2022 Cuma 17:08:51.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "rez.sel".
 copy "genelfis.sel".
 copy "genel.sel".
 copy "konuk.sel".
 copy "acenta.sel".
 copy "dokumer.sel".
 copy "kodlar02.sel".
 copy "logindex.sel".
 copy "ulke.sel".
 copy "yanrez.sel".
 copy "doviz.sel".
 copy "odalar.sel".
 copy "takvim.sel".
 copy "konum.sel".
 copy "romhrk.sel".
 copy "cast.sel".
 copy "kur.sel".
 copy "kllnc.sel".
 copy "ozluk.sel".
 copy "plaka.sel".
       SELECT takas ASSIGN RANDOM,takas-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY takas-anah
           STATUS FS-takas.
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 FD takas LABEL RECORD IS STANDARD.
 01 takas-REC.
    02 takas-anah             pic 999999999.
    02 takas-ana-rec          pic x(5000).
 copy "plaka.lib".
 copy "rez.lib".
 copy "genelfis.lib".
 copy "genel.lib".
 copy "konuk.lib".
 copy "acenta.lib".
 copy "dokumer.lib".
 copy "kodlar02.lib".
 copy "logindex.lib".
 copy "ulke.lib".
 copy "yanrez.lib".
 copy "doviz.lib".
 copy "odalar.lib".
 copy "takvim.lib".
 copy "konum.lib".
 copy "romhrk.lib".
 copy "cast.lib".   
 copy "kur.lib".
 copy "kllnc.lib".
 copy "ozluk.lib".
*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "not.lnk".
 COPY "dokcagir.tasi".
 copy "reffiltr.wrk".
*{Bench}copy-working
 COPY "rezsuz.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "rezsuz.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end

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
 COPY "rezsuz.prd".
 COPY "rezsuz.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "reffilt.cpy".
 destroy-window-proc.
      destroy form1-handle.
 copy "rez.lg".
 copy "konuk.lg".
