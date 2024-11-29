*{Bench}prg-comment
* csvyap.cbl
* csvyap.cbl is generated from D:\asya\acugt.ytl\otel\csvyap.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. csvyap IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:53:56.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 copy "excel12.def".
        .
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
     COPY "dokumer.sel"  IN "../../otel/lib-sel".
     copy "logindex.sel".
     copy "prosif.sel".
     copy "genelfis.sel".
     COPY "errorlog.sel".
     copy "genel.sel".
     copy "isyeri.sel".
     copy "odalar.sel".
     copy "kllnc.sel".
     select liste assign to output,
            liste-adres,
        organization line sequential
        status fs-liste.

     select wc assign to wc-komut
        organization line sequential.


 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
     COPY "dokumer.lib"  IN "../../otel/lib-sel".
     COPY "errorlog.lib".
     copy "logindex.lib".
     copy "prosif.lib".
     copy "genelfis.lib".
     copy "genel.lib".
     copy "isyeri.lib".
     copy "kllnc.lib".
      copy "odalar.lib".
 fd liste label record standard.
 78 liste-rec-length  value data-dokumer-length * 2.
 01 liste-rec                pic x(liste-rec-length).
 fd wc label record standard.
 01 wc-rec                pic x(15).

 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 copy "opensave.def".
 copy "activex.def".
 copy "winhelp.def".
 copy "frame.wrk".
 copy "reffiltr.wrk".

* Excel Ole Degiskenleri
 78 xls-gri-renk         value x#BFBFBF.
 78 xls-mavi-renk        value x#99CCFF.

 01 xls-deg.
    02 xls-app        handle of @Application of @Excel.
    02 xls-workbook   handle of @WorkBook    of @Excel.
    02 xls-worksheet  handle of @WorkSheet   of @Excel.
    02 xls-range      handle of @Range       of @Excel.
    02 xls-query      handle of @QueryTable  of @Excel.
    02 xls-font       handle of @Font        of @Excel.
    02 xls-Interior   handle of @Interior    of @Excel.
    02 xls-Borders    handle of @Borders     of @Excel.
    02 xls-connection                           pic x(255).
    02 xls-kolon-adet                           pic 9(3).
    02 xls-sql                                  pic x(10).
    02 xls-column-type-array.
       03 filler occurs 1 to 255 times
                 depending on xls-kolon-adet.
          04 xls-column-type usage handle of variant.


*{Bench}copy-working
 COPY "csvyap.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "csvyap.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "csvyap.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING csvyap-link.
*{Bench}end
*{Bench}declarative
*{Bench}end
 declaratives.
 file-error section.
     use after standard error procedure on dokumer liste genel genelfis log-index errorlog prosif isyeri.
 file-para.
     perform fileerr-proc.
 file-exit.
     exit.
*
 program-end section.
     use at program end.
 program-end-set.
     accept strip-trailing-spaces from environment "strip-trailing-spaces".
 program-end-exit.
     exit.
*
 program-start section.
     use at program start.
 program-start-set.
     set environment "strip-trailing-spaces"    to 1.
 program-start-exit.
     exit.

 activex-error section.
     use after exception on object.
 activex-para.
     call "c$excepinfo" using 
                        error-info,
                        activex-source,
                        activex-description,
                        activex-help-file,
                        activex-help-context
     end-call
     inspect activex-description replacing 
             trailing spaces by low-values
     if activex-help-file = spaces 
        display message box
                activex-description
                title activex-source
                icon mb_error_icon
     else
        display message box 
                activex-description,new-line,
                "Yardim istermisiniz ? ",
                title activex-source,
                icon mb_error_icon
                type is mb_yes_no
                default mb_yes
                giving activex-secim
        if activex-secim = 1 
           call "$winhelp" using 
                           activex-help-file,
                           help-context,
                           activex-help-context,
           end-call
        end-if
     end-if.
 activex-error-exit.
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
 COPY "csvyap.prd".
 COPY "csvyap.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
      destroy form1-handle.
 REPORT-COMPOSER SECTION.
