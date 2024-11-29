*{Bench}prg-comment
* rezxls.cbl
* rezxls.cbl is generated from D:\asya\acugt.ytl\otel\rezxls.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. rezxls IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 16:05:28.
 REMARKS. 
     ramco ....................................
*{Bench}end
 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.       
        syserr is debug,
        switch-1 on status is program-versiyon-kontrol,

        COPY "excel_ole.def".
       alphabet turkce-alfabe 1 thru 256.
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
     copy "rezxls.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
     copy "rezxls.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "opensave.def".
 copy "activex.def".
 copy "winhelp.def".
**************OLE WRK*******************
 01 excel-objects. 
    03 hexcelapp  handle of application of excel. 
    03 hexcelwkb  handle of workbook    of excel. 
    03 hexcelwks  handle of worksheet   of excel. 
    03 hrange     handle of range       of excel.

*
 copy "adres.wrk".


*{Bench}copy-working
 COPY "rezxls.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "rezxls.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "rezxls.scr".
*{Bench}end
* copy "frame.scr".

*{Bench}linkpara
 PROCEDURE DIVISION USING link-gruplar-rec.
*{Bench}end
*{Bench}declarative
*{Bench}end
*
 declaratives.
*INPUT
 asya-file-input-error section.
     use after standard error procedure on input.
 asya-file-input-perform.
     perform fileerr-proc.
 asya-file-input-exit.
     exit.
*I-O
 asya-file-i-o-error section.
     use after standard error procedure on i-o.
 asya-file-i-o-perform.
     perform fileerr-proc.
 asya-file-i-o-exit.
     exit.
*OUTPUT
 asya-file-output-error section.
     use after standard error procedure on output.
 asya-file-output-perform.
     perform fileerr-proc.
 asya-file-output-exit.
     exit.
*EXTEND
 asya-file-extend-error section.
     use after standard error procedure on extend.
 asya-file-extend-perform.
     perform fileerr-proc.
 asya-file-extend-exit.
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
 COPY "rezxls.prd".
 COPY "rezxls.evt".
*{Bench}end
 COPY "dsyhata.prc".
 destroy-window-proc.
     destroy form1-handle.

