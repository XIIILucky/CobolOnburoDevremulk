*{Bench}prg-comment
* kkarti.cbl
* kkarti.cbl is generated from D:\asya\acugt.ytl\otel\kkarti.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kkarti.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:01:45.
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

        COPY "genel.sel".
        COPY "genelfis.sel".
        COPY "errorlog.sel".                                                    
        COPY "logindex.sel".                                                    
        copy "konuk.sel".                                            
        copy "rez.sel".
         copy "odalar.sel".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
        COPY "genel.lib".
        COPY "genelfis.lib".
        COPY "errorlog.lib".                                                    
        COPY "logindex.lib".                                                    
        copy "konuk.lib". 
         copy "odalar.lib".
        copy "rez.lib".                                   
 
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
 COPY "kkarti.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "kkarti.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kkarti.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-kkart.
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
 COPY "kkarti.prd".
 COPY "kkarti.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "konuk.lg".
 copy "rez.lg".
 destroy-window-proc.
     destroy Form1-Handle.
