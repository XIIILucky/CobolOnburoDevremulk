*{Bench}prg-comment
* tmpsil.cbl
* tmpsil.cbl is generated from D:\asya\acugt.ytl\otel\tmpsil.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. tmpsil IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:47:34.
 REMARKS. 
     Bu programcýk asya ytl liste klasörü altýndaki dosyalarý rimbawwwlar
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
      select lisans assign to random,
          lisans-dosya,
        organization line sequential,
        status fs-lisans.
      select bin assign to random,
              bin-dosya,
        organization binary sequential,
        status fs-bin.
        COPY "konuk.sel".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 fd bin label record standard.
 01 bin-rec pic x(3).
 fd lisans label record standard.
 01 lisans-rec.
    02 lisans-gun    pic xx.
    02 lisans-ay     pic xx.
    02 lisans-yil    pic xxxx.
    COPY "konuk.lib".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".

*{Bench}copy-working
 COPY "tmpsil.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "tmpsil.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 declaratives.
 file-error section.
      use after standard error procedure on lisans konuk bin.

 file-para.
      if fs-lisans = "35"
         open output lisans.
         
 file-exit.
      exit.
 end declaratives.

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
 COPY "tmpsil.prd".
 COPY "tmpsil.evt".
*{Bench}end
 REPORT-COMPOSER SECTION.
