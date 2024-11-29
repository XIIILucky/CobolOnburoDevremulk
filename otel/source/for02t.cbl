*{Bench}prg-comment
* for02t.cbl
* for02t.cbl is generated from D:\asya\acugt.ytl\otel\for02t.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. for02t.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 12 Þubat 2021 Cuma 14:55:22.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 OBJECT-COMPUTER.
      NITALLICA
      COLLATING SEQUENCE TURKCE-ALFABE.
 SPECIAL-NAMES.
      copy "special.cpy" in "../../muha/copylib".
*{Bench}activex-def
*{Bench}end

 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "for02t.tsl". 

 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "for02t.tfd". 

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
  copy "adres.wrk".
 copy "fiyhes.wrk".
  copy "gunbul.wrk".
 copy "reffiltr.wrk".
 COPY "xrez.lib". 
 copy "filtr.wrk".
 copy "modahes.wrk".
 copy "aksiler.wrk".
 copy "link-oda.lnk".
*{Bench}copy-working
 COPY "for02t.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "for02t.lks".
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "for02t.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-grup-for.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "for02t.dcl". 

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
 COPY "for02t.prd".
 COPY "for02t.evt".
*{Bench}end
 copy "rezfilt.cpy".
 copy "grezfilt.cpy".
  copy "grekle.cpy".

 copy "dsyhata.prc". 
 copy "reffilt.cpy".
 copy "modahes.cpy".
 copy "cast.lg".
 destroy-window-proc.
     destroy Form1-Handle.