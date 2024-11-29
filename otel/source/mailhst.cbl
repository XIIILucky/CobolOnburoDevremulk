*{Bench}prg-comment
* mailhst.cbl
* mailhst.cbl is generated from D:\asya\acugt.ytl\otel\mailhst.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. mailhst.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:49:56.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
 COPY "SmtpMail.def".
 COPY "Acuclass.Def".
     .
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
  copy "genel.sel".
  copy "genelfis.sel".
  copy "logindex.sel".
  copy "mailtipi.sel".
  copy "ulke.sel".
  copy "errorlog.sel".
  copy "konuk.sel".
  copy "maildata.sel".
  copy "ozluk.sel".
  copy "mailkime.sel".
  copy "odalar.sel".
      select mail-oku assign to random,
              mail-oku-dosya
         organization binary sequential
         status fs-mail-oku. 

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
  copy "maildata.lib".
  copy "konuk.lib".
  copy "genel.lib".
  copy "genelfis.lib".
  copy "logindex.lib".
  copy "ulke.lib".
  copy "errorlog.lib".
  copy "mailtipi.lib".
  copy "ozluk.lib".
  copy "mailkime.lib".
  copy "odalar.lib".
  fd mail-oku label record standard.
  01 mail-oku-rec          pic x(100000). 
  66 genel-mail-rec renames genel-anahtar thru  genel-staf.
*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "activex.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 01 @message    handle of mailmessage of AddEmailLib.
 01 from1       handle of mailaddress of AddEmailLib.
 01 attach1     handle of MailAttachment of AddEmailLib.
 01 attach2     handle of MailAttachment of AddEmailLib.
 01 recipient   handle of MailAddress of AddEmailLib.

  01 genel-mail-rec-detay.
    02 genel-mail-anahtar             pic x.
    02 genel-mail-SmtpServer          pic x(50).
    02 genel-mail-SmtpUsername        pic x(50).
    02 genel-mail-SmtpPassword        pic x(50).
    02 genel-mail-gonderen-adresi     pic x(20).
    02 genel-mail-gonderen-adi        pic x(50).

*{Bench}copy-working
 COPY "mailhst.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "mailhst.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
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
 COPY "mailhst.prd".
 COPY "mailhst.evt".
*{Bench}end
 copy "dsyhata.prc".
   destroy-window-proc.
     destroy Form1-Handle.
