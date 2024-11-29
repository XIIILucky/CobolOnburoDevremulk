*{Bench}prg-comment
* minigir.cbl
* minigir.cbl is generated from D:\asya\acugt.ytl\otel\minigir.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. minigir.
 AUTHOR. kadir.
 DATE-WRITTEN. 1 Haziran 2022 Çarþamba 13:36:47.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
       copy "genel.sel".
       copy "genelfis.sel".
       copy "depkod.sel".
       copy "kodlar02.sel".
       copy "konuk.sel". 
       copy "konuk.sel" replacing leading "KONUK" by "KONU2". 
       copy "romhrk.sel".
       copy "onkasa.sel".
       copy "isyeri.sel".
       copy "kur.sel".
 
       copy "telkod.sel".
       copy "teldata.sel".
       copy "odalar.sel".
       COPY "grup.sel".
 
       copy "telkont.sel".
       copy "not.sel".
       copy "wakeup.sel".
       copy "rez.sel".

*       copy "satkod.sel" in "../../cost/lib-sel".
*       copy "pos.sel" in "../../cost/lib-sel".
*       copy "posdep.sel" in "../../cost/lib-sel".
*       copy "kart.sel" in "../../cost/lib-sel".
*       copy "genelfis.sel" in "../../cost/lib-sel" replacing 
*         leading "genelfis" by "cgenelfis".

       copy "satkod.sel" in "../../cost.922/lib-sel".
       copy "pacikla.sel" in "../../cost.922/lib-sel".
       copy "posy.sel" in "../../cost.922/lib-sel".
       copy "posdep.sel" in "../../cost.922/lib-sel".
       copy "kart.sel" in "../../cost.922/lib-sel".

       copy "genelfis.sel" in "../../cost.922/lib-sel" replacing 
         leading "genelfis" by "cgenelfis".

        COPY "errorlog.sel".                                                    
        COPY "logindex.sel". 
        
        SELECT takas ASSIGN RANDOM, takas-DOSYA
               ORGANIZATION IS  INDEXED
               ACCESS MODE IS   DYNAMIC
               RECORD KEY IS    takas-ANAH
               alternate record key takas-satkod-adi duplicates
               FILE STATUS IS FS-takas.                                           

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.

    copy "genel.lib".
    copy "genelfis.lib".
    copy "depkod.lib".
    copy "kodlar02.lib".
    copy "konuk.lib".
    copy "konuk.lib" replacing leading "KONUK" by "KONU2" .
    copy "romhrk.lib".
    copy "onkasa.lib".
    copy "isyeri.lib".
    copy "kur.lib".
    copy "telkod.lib".
 
    copy "teldata.lib".
    copy "odalar.lib".
    copy "grup.lib".
    copy "telkont.lib".
    copy "not.lib".
    copy "wakeup.lib".
    copy "rez.lib".
    
*    copy "satkod.lib" in "../../cost/lib-sel".
*    copy "pos.lib" in "../../cost/lib-sel".
*    copy "posdep.lib" in "../../cost/lib-sel".
*    copy "kart.lib" in "../../cost/lib-sel".
*    copy "genelfis.lib" in "../../cost/lib-sel" replacing 
*         leading "genelfis" by "cgenelfis".

    copy "satkod.lib" in "../../cost.922/lib-sel".
    copy "pacikla.lib" in "../../cost.922/lib-sel".
    copy "posy.lib" in "../../cost.922/lib-sel".
    copy "posdep.lib" in "../../cost.922/lib-sel".
    copy "kart.lib" in "../../cost.922/lib-sel".
    copy "genelfis.lib" in "../../cost.922/lib-sel" replacing 
         leading "genelfis" by "cgenelfis".

    copy "errorlog.lib".                                                    
    copy "logindex.lib". 
 
 fd takas label record standard.
 01 takas-rec.
          02 takas-anah.         
             03 takas-satkod-kodu           pic x(04).
          02 takas-satkod-adi               pic x(60).         
          02 takas-satkod-tl-satis          pic 9(12)v99.
          02 takas-satkod-tl-satis-kdvli    pic 9(12)v99.
          02 takas-satkod-dv-satis          pic 9(12)v99.
          02 takas-satkod-dv-satis-kdvli    pic 9(12)v99.
          02 takas-adet                     pic 99.


*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
   copy "adres.wrk".
 COPY "rout.wrk".
 COPY "hrkgir.wrk".
*{Bench}copy-working
 COPY "minigir.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "minigir.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "minigir.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-minibar.
*{Bench}end
*{Bench}declarative
*{Bench}end
  COPY "minigir.dcl".
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
 COPY "minigir.prd".
 COPY "minigir.evt".
*{Bench}end
 copy "dsyhata.prc".
 copy "romhrk.lg".
 copy "exthrk.lg".
 destroy-window-proc.
     destroy Form1-Handle.

