*{Bench}prg-comment
* kodtrans.cbl
* kodtrans.cbl is generated from D:\asya\acugt.ytl\otel\kodtrans.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kodtrans.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:49:19.
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
 COPY "cast2int.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "cast2int.tfd".

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "dosyalar.wrk".
 copy "eteldata.wrk".
*{Bench}copy-working
 COPY "kodtrans.wrk".
*{Bench}end
 COPY "hrkgir.wrk".

 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "kodtrans.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kodtrans.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING linkli.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "cast2int.dcl".

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
 COPY "kodtrans.prd".
 COPY "kodtrans.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "calling.lg".

