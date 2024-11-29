*{Bench}prg-comment
* kalekart.cbl
* kalekart.cbl is generated from D:\asya\acugt.ytl\otel\kalekart.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. kalekart.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:09:51.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
       alphabet turkce-alfabe 1 thru 256.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
 copy "kalekart.tsl".
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
 copy "kalekart.tfd".
*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
                                                            | buranýn altý
 01 a   usage  unsigned-short.
 01 b   pic x(16) value "7BFE7182075A52A4".
 01 adr pointer.
 01 sayi PIC S9(4) COMP-5.

 01 smallint PIC S9(4) COMP-5.
 01 byt  pic x value "0".
 01 buf pic x(5000).
 01 x6 pic x(6).
 77 numArray1 pic x(4).
 01 numArray2 pic x(8) value "00000000".
 01 numArray3 pic x(3) value "000".
 01 numArray4 pic x(12) value "000000000000".
 01 numArray5 pic x(12) value "000000000000".
 01 numArray6 pic x(8) value "00000000".

 01 readNumArray1 pic x(48).
 01 readNumArray2 pic x(6) value "000000".
 01 readNumArray3 pic s9(4) comp-5.

 01 SGCnumArray1 pic x(4) value "5001".
 01 SGCnumArray2 pic x(8) value "00000000".
 01 SGCnumArray3 pic x(12) value "000000000000".
 01 SGCnumArray4 pic x(5) value "00000".

 01 SGCBNnumArray1 pic x(30).
 01 SGCBNnumArray2 pic x(8) value "00000000".
 01 SGCBNnumArray3 pic x(12) value "000000000000".
 01 SGCBNnumArray4 pic x(5) value x"0000000000".

 01 GCBNnumArray1 pic x(30).
 01 GCBNnumArray2 pic x(8) value "00000000".
 01 GCBNnumArray3 pic x(3) value "000".
 01 GCBNnumArray4 pic x(12) value "000000000000".
 01 GCBNnumArray5 pic x(12) value "000000000000".
 01 GCBNnumArray6 pic x(8) value "00000000".

 01 starttime pic x(12).
 01 endtime pic x(12).
 01 return-sayi PIC S9(4) COMP-5.
                                                       | buranýn üstü alýnacak dayý

*{Bench}copy-working
 COPY "kalekart.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "kalekart.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "kalekart.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING link-kart-rezno.
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
 COPY "kalekart.prd".
 COPY "kalekart.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy form1-handle.
