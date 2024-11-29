*{Bench}prg-comment
* blokyap.cbl
* blokyap.cbl is generated from D:\asya\acugt.ytl\otel\blokyap.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. blokyap.
 AUTHOR. salih.
 DATE-WRITTEN. 5 Mayýs 2022 Perþembe 13:32:01.
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
 COPY "blokyap.tsl".

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "blokyap.tfd".

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
 copy "mb.wrk". 
 01 TAKAS-DOSYA.
    02 TAKAS-ADRESI         PIC X(16)
       VALUE "/asya/ytl/liste/".
    02 TAKAS-DOSYA-ADI      PIC X(04) VALUE "tblk".
    02 TAKAS-FIS-NO         PIC X(04).
    02 TAKAS-k               PIC X(04).
 01 FS-TAKAS      PIC XX.
 copy "not.lnk".
*{Bench}copy-working
 COPY "blokyap.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "blokyap.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "blokyap.dcl".

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
 COPY "blokyap.prd".
 COPY "blokyap.evt".
*{Bench}end
 copy "dsyhata.prc".
 destroy-window-proc.
     destroy Form1-Handle.
 copy "rez.lg".
 copy "cast.lg".
 COPY "odalar.lg".
