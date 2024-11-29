*{Bench}prg-comment
* menuotel.cbl
* menuotel.cbl is generated from D:\asya\acugt.ytl\otel\menuotel.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. menuotel IS INITIAL PROGRAM.
 AUTHOR. kadir.
 DATE-WRITTEN. 27 Ocak 2022 Perþembe 15:30:43.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
 COPY "SkinFramework.def".
 COPY "PopupControl.def".
 COPY "Acuclass.Def".
     .
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
*{Bench}file-control
*{Bench}end
 COPY "menuotel.tsl".
  copy "acendft.sel".
      select menu-inx assign to random,
            menuotel-inx-dosya,
         organization indexed,
         access dynamic
         record key is menu-inx-anah.
 DATA                        DIVISION.
 FILE                        SECTION.
*{Bench}file
*{Bench}end
 COPY "menuotel.tfd".
  copy "acendft.lib".
 fd menu-inx label record standard.
 01 menu-inx-rec.
    02 menu-inx-anah         pic 9(5).
    02 menu-inx-durum        pic 9(10).
    02 menu-inx-handle       pic x(4) comp-n.
    02 menu-inx-id           pic 9(10).
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "fonts.def".
 COPY "activex.def".
 COPY "lmresize.def".
 COPY "showmsg.def".
*{Bench}end
 COPY "adres.wrk".
 COPY "asyadll.cpy".
 77 fs-acendft pic xx.
 77 popup handle of @popupcontrolitem of @XtremeSuiteControls.
*/ skinframework degiþkenleri
 78 max_skin                        value 30.
 01 skinframework-deg.
    02 skinframework-yuklumu        pic x.
    02 skinframework-hwnd           pic x(4) comp-n.
    02 Skinframework-Descriptions   handle of @SkinDescriptions.
    02 Skinframework-Description    handle of @SkinDescription.
    02 Skinframework-i              pic 9(10).
    02 Skinframework-ii             pic 9(10).
    02 Skinframework-iii            pic 9(10).
    02 Skinframework-iiii           pic 9(10).
*/ poop tan gelen exeption - 8010 yapýcaz
    02 skinframework-skinler-occ occurs max_skin times.
       03 skinframework-skin-name   pic x(30).
       03 skinframework-skin-path   pic x(256).


 01 activex-err-degiskenler.
    02 activex-source               pic  x(30).
    02 activex-description          pic  x(200).
    02 activex-help-file            pic  x(200).
    02 activex-help-context         usage is unsigned-long.
    02 activex-secim                pic  9.
*{Bench}copy-working
 COPY "menuotel.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end

 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "menuotel.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "menuotel.dcl".

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
 COPY "menuotel.prd".
 COPY "menuotel.mnu".
 COPY "menuotel.evt".
*{Bench}end
 COPY "dsyhata.prc".
 
 destroy-window-proc.
     destroy Form1-Handle.
