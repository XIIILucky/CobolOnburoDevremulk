*{Bench}prg-comment
* trzmist.cbl
* trzmist.cbl is generated from D:\asya\acugt.ytl\otel\trzmist.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. trzmist.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:55:42.
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
*
        COPY "genel.sel".
        COPY "genelfis.sel".
        COPY "rez.sel".
        COPY "konuk.sel".
        COPY "takvim.sel".
        COPY "cast.sel".
        copy "dokumer.sel".
        copy "odalar.sel".
        COPY "errorlog.sel".                                                    
        COPY "logindex.sel".  
        copy "ulke.sel". 
        copy "polisxml.sel".
        copy "uyruk.sel".
 select takas assign to random , takas-adres  
     organization indexed,  
     access dynamic,  
     record key takas-anah, 
     alternate record key takas-anah1 = takas-uyruk,takas-anah duplicates 
     status fs-takas.  
                                        
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
        COPY "genel.lib".
        COPY "genelfis.lib".
        COPY "rez.lib".
        COPY "konuk.lib".
        COPY "takvim.lib".
        COPY "cast.lib".
        copy "dokumer.lib".
        COPY "errorlog.lib".                                                    
        COPY "odalar.lib".                                                    
        COPY "logindex.lib".                                                    
        copy "ulke.lib".
        copy "polisxml.lib".
        copy "uyruk.lib".
 fd takas label record standard.  
 01 takas-rec.  
   02 takas-anah.
      03 takas-rez-no           pic 9(08).
      03 takas-sira             pic 9(3).
   02 takas-uyruk               pic x(05).
   02 takas-g-tar.
     03 takas-g-yil             pic 9(4).
     03 takas-g-ay              pic 9(2).
     03 takas-g-gun             pic 9(2).
   02 takas-c-tar.
     03 takas-c-yil             pic 9(4).
     03 takas-c-ay              pic 9(2).
     03 takas-c-gun             pic 9(2).
   02 takas-adi                 pic x(50).
   02 takas-soyadi              pic x(50).
   02 takas-pasaport            pic x(20).
   02 takas-folio               pic 9(08).

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
*{Bench}copy-working
 COPY "trzmist.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "trzmist.scr".
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
 COPY "trzmist.prd".
 COPY "trzmist.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
