*{Bench}prg-comment
* menutaze.cbl
* menutaze.cbl is generated from D:\asya\acugt.ytl\otel\menutaze.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. menutaze IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:49:09.
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
 COPY "menutaze.tsl".
      select menu-inx assign to random,
            menuotel-inx-dosya,
         organization indexed,
         access dynamic
         record key is menu-inx-anah
         status fs-menu-inx.
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "menutaze.tfd".
 fd menu-inx label record standard.
 01 menu-inx-rec.
    02 menu-inx-anah         pic 9(5).
    02 menu-inx-durum        pic 9(10).
    02 menu-inx-handle       pic x(4) comp-n.
    02 menu-inx-id           pic 9(10).
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
*{Bench}copy-working
 COPY "menutaze.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "menutaze.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "menutaze.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING mnu, frm.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "menutaze.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end

     perform Form1-Aft-Initdata
     goback.

     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "menutaze.prd".
 COPY "menutaze.evt".
*{Bench}end
 COPY "dsyhata.prc".

 destroy-window-proc.

