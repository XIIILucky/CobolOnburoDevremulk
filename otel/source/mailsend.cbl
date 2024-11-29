*{Bench}prg-comment
* mailsend.cbl
* mailsend.cbl is generated from D:\asya\acugt.ytl\otel\mailsend.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. mailsend IS INITIAL PROGRAM.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:55:00.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.

 SPECIAL-NAMES.
 COPY "SmtpMail.def".
 COPY "Acuclass.Def".
             . 
*{Bench}decimal-point
*{Bench}end
*    
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
     copy "mailsend.tsl".
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
     copy "mailsend.tfd".
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "activex.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "winhelp.def".
 COPY "otlortak.lib" replacing 
         leading "otlortak" by "mem-otlortak"
         ==fd otlortak label record standard.==  by == ==.

 01 @message                   handle of mailmessage of AddEmailLib.
 01 from1                      handle of mailaddress of AddEmailLib.
 01 attach occurs 10 times     handle of MailAttachment of AddEmailLib.
 01 recipient                  handle of MailAddress of AddEmailLib. 
 01 bccrecipient               handle of MailAddress of AddEmailLib. 
 01 ccrecipient                handle of MailAddress of AddEmailLib. 
 01 mail-donus                 signed-long.

*{Bench}copy-working
 COPY "mailsend.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "mailsend.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "mailsend.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING mailsend-link.
*{Bench}end
*{Bench}declarative
*{Bench}end
 copy "mailsend.dcl".
 

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
 COPY "mailsend.prd".
 COPY "mailsend.evt".
*{Bench}end
 REPORT-COMPOSER SECTION.
*
 copy "dsyhata.prc".
*
 destroy-window-proc.
    destroy form1-handle.
