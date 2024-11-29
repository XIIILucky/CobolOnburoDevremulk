*{Bench}prg-comment
* polxmltr.cbl
* polxmltr.cbl is generated from D:\asya\acugt.ytl\otel\polxmltr.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. polxmltr.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:46:43.
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
          SELECT polxmltr ASSIGN RANDOM, 
                  polisxml-DOSYA
                 ORGANIZATION INDEXED
                 ACCESS MODE  IS DYNAMIC
                 RECORD KEY   IS polxmltr-ANAH                          
                       STATUS FS-polxmltr.

          SELECT polisxml ASSIGN RANDOM, 
                   polxmltr-DOSYA
                 ORGANIZATION INDEXED
                 ACCESS MODE  IS DYNAMIC
                 RECORD KEY   IS POLISXML-ANAH                          
                 ALTERNATE RECORD KEY IS POLISXML-ADI DUPLICATES,
                 ALTERNATE RECORD KEY IS POLISXML-SOYADI DUPLICATES,
                 ALTERNATE RECORD KEY IS POLISXML-GEL-TAR DUPLICATES,
                 ALTERNATE RECORD KEY IS POLISXML-GIT-TAR DUPLICATES,
                       STATUS FS-polisxml.    
    COPY "genelfis.sel".
    COPY "errorlog.sel".
    COPY "logindex.sel".
    COPY "genel.sel".
    COPY "odalar.sel".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
    COPY "genelfis.lib".
    COPY "polisxml.lib".
    COPY "errorlog.lib".
    COPY "logindex.lib".
    COPY "genel.lib".
    COPY "odalar.lib".
*
 FD polxmltr LABEL RECORD STANDARD.
 01 polxmltr-REC.
          02 polxmltr-ANAH.
             03 polxmltr-rezno       PIC 9(08).
             03 polxmltr-sirano      pic 9.
          02 polxmltr-DURUMU         PIC X.
*********> polxmltr-Durumu   => Folionun iceridemi yoksa histroyde mi oldugunu
*********> belirtir...I-> Iceride H->Historyde Gibi............
        
          02 polxmltr-gerisi.
          03 polxmltr-ADI            PIC X(20).
          03 polxmltr-SOYADI         PIC X(20).
          03 polxmltr-ODANO          PIC X(04).
          03 polxmltr-uyruk          PIC X(04).
          03 polxmltr-GEL-TAR.
             04 polxmltr-GEL-YIL     PIC 9999.
             04 polxmltr-GEL-AY      PIC 99.
             04 polxmltr-GEL-GUN     PIC 99.
          03 polxmltr-GIT-TAR.
             04 polxmltr-GIT-YIL     PIC 9999.
             04 polxmltr-GIT-AY      PIC 99.
             04 polxmltr-GIT-GUN     PIC 99.
          03 polxmltr-GEL-ZAMAN.
             04 polxmltr-GEL-SAAT     PIC 99.
             04 polxmltr-GEL-DAKIKA   PIC 99.
             04 polxmltr-GEL-SANIYE   PIC 99.
          03 polxmltr-GIT-ZAMAN.
             04 polxmltr-GIT-SAAT     PIC 99.
             04 polxmltr-GIT-DAKIKA   PIC 99.
             04 polxmltr-GIT-SANIYE   PIC 99.
          03 polxmltr-tckimlikno      pic 9(11).
          03 polxmltr-babaadi         pic x(20).
          03 polxmltr-anaadi          pic x(20).
          03 polxmltr-dyeri           pic x(40).
          03 polxmltr-dog-tar.
             04 polxmltr-dog-YIL     PIC 9999.
             04 polxmltr-dog-AY      PIC 99.
             04 polxmltr-dog-GUN     PIC 99.
          03 polxmltr-kturu          pic x.
          03 polxmltr-kseri          pic x(20).
          03 polxmltr-nil            pic x(20).
          03 polxmltr-nilce          pic x(20).
          03 polxmltr-nmahalle       pic x(20).
          03 polxmltr-ncilt          pic x(15).
          03 polxmltr-naile          pic x(15).
          03 polxmltr-nsira          pic x(15).
          03 polxmltr-cinsiyet       pic x.
          03 polxmltr-medeni         pic x.
          03 polxmltr-isi            pic x(20).
          03 polxmltr-adr            pic x(100).
          03 polxmltr-plaka          pic x(20).
          03 polxmltr-prb            pic x.
          03 polxmltr-prb-ack        pic x(57).
          03 polxmltr-folio-no       pic 9(08).
          03 polxmltr-BOS            PIC X(82).
          03 polxmltr-STAF           PIC X(04).
          


 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 01 polxmltr-DOSYA.
    02 polxmltr-ADRESI           PIC X(21)
       VALUE "/asya/ytl/liste/poltr".
    02 polxmltr-dosya-no pic x(4).


*{Bench}copy-working
 COPY "polxmltr.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "polxmltr.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "polxmltr.dcl".

 Acu-Main-Logic.
*{Bench}entry-befprg
*    Before-Program
*{Bench}end
     PERFORM Acu-Initial-Routine
* run main screen
*{Bench}run-mainscr
     PERFORM Acu-Screen1-Routine
*{Bench}end
     PERFORM Acu-Exit-Rtn
     .

*{Bench}copy-procedure
 COPY "showmsg.cpy".
 COPY "polxmltr.prd".
 COPY "polxmltr.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy screen1-handle.



