*{Bench}prg-comment
* acenakis.cbl
* acenakis.cbl is generated from D:\asya\acugt.ytl\otel\acenakis.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. acenakis.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:55:49.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
        alphabet turkce-alfabe 1 thru 256.
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
         copy "genel.sel".
         copy "genelfis.sel".
         copy "acenta.sel".
         copy "dokumer.sel".
         copy "odalar.sel".
         copy "logindex.sel".
          copy "hesap.sel"  of "..\..\muhb\lib-sel".                
          copy "cari.sel"   of "..\..\muhb\lib-sel".                
            copy "mahsup.sel"  of "..\..\muhb\lib-sel"
              REPLACING =='MAHSUP'== BY ==MAHSUP==.
         select takas assign to random , takas-adres
             organization indexed,
             access dynamic,
             record key takas-anahtar,
             status fs-takas.
         
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         copy "genel.lib".
         copy "genelfis.lib".
         copy "acenta.lib".
         copy "dokumer.lib".
         copy "odalar.lib".
         copy "logindex.lib".
          copy "hesap.lib"  of "..\..\muhb\lib-sel".                
          copy "cari.lib"   of "..\..\muhb\lib-sel".                
            copy "mahsup.lib"  of "..\..\muhb\lib-sel"
              REPLACING =='MAHSUP'== BY ==MAHSUP==.

 fd takas label record standard.
 01 takas-rec.
     02 takas-anahtar.
        03 takas-hesap-kodu pic x(15).


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
*{Bench}copy-working
 COPY "acenakis.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "acenakis.scr".
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
 COPY "acenakis.prd".
 COPY "acenakis.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
