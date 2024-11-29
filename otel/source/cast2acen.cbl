*{Bench}prg-comment
* cast2acen.cbl
* cast2acen.cbl is generated from D:\asya\acugt.ytl\otel\cast2acen.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. cast2acen.
 AUTHOR. salih.
 DATE-WRITTEN. 25 Nisan 2016 Pazartesi 12:54:33.
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
 COPY "cast2acen.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "cast2acen.tfd".

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
 COPY "cast2acen.wrk".
*{Bench}end
 COPY "hrkgir.wrk".

 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "cast2acen.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "cast2acen.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING cast2acen-acenta.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "cast2acen.dcl".

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
 COPY "cast2acen.prd".
 COPY "cast2acen.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 COPY "calling.lg".
 copy "romhrk.lg".
 copy "exthrk.lg".

