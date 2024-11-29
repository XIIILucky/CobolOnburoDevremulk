*{Bench}prg-comment
* proguns.cbl
* proguns.cbl is generated from D:\asya\acugt.ytl\otel\proguns.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. proguns.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 4 Kasým 2020 Çarþamba 15:51:40.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
    COPY "genel.sel".
    COPY "errorlog.sel".                                                    
    COPY "odalar.sel".                                                    
    COPY "genelfis.sel".                                                    
    COPY "logindex.sel".       
    copy "musteri.sel".
    copy "depart.sel".
    copy "rez.sel".
    copy "prohrk.sel".
    copy "prolog.sel".
    copy "sprohrk.sel". 
    copy "takvim.sel".
    select trnot assign to random,
              "/asya/ytl/data/otel/standart/protrans.log",
              organization line sequential. 
           SELECT takasa ASSIGN RANDOM, 
                 takasa-DOSYA
                 ORGANIZATION INDEXED
                 ACCESS MODE  IS DYNAMIC
                 RECORD KEY   IS takasa-ANAH 
                 alternate record  takasa-g-tarih  duplicates       
                       STATUS FS-takasa.
           SELECT takasb ASSIGN RANDOM, 
                 takasb-DOSYA
                 ORGANIZATION INDEXED
                 ACCESS MODE  IS DYNAMIC
                 RECORD KEY   IS takasb-ANAH 
                 alternate record  takasb-duz-tarih  duplicates       
                       STATUS FS-takasb.
           SELECT takasc ASSIGN RANDOM, 
                 takasc-DOSYA
                 ORGANIZATION INDEXED
                 ACCESS MODE  IS DYNAMIC
                 RECORD KEY   IS takasc-ANAH 
                 alternate record  takasc-duz-tarih  duplicates       
                       STATUS FS-takasc.

*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
    COPY "genel.lib".
    COPY "errorlog.lib".                                                    
    COPY "genelfis.lib".                                                    
    COPY "logindex.lib".       
    copy "musteri.lib".
    copy "depart.lib".
    COPY "odalar.lib".                                                    
    copy "rez.lib".
    copy "prohrk.lib".
    copy "prolog.lib".
    copy "sprohrk.lib".
    copy "takvim.lib".
*
 FD takasa LABEL RECORD STANDARD.
 01 takasa-REC.
   02 takasa-anah.
      03 takasa-tip                   pic x.
      03 m-profil.
	      05 takasa-sirket                pic x(08).
	      05 takasa-no                    pic 9(08).
      03 takasa-bos-anah              pic x(10).
   02 takasa-adi                      pic x(20).
   02 takasa-soyadi                   pic x(20).
   02 takasa-d-tarihi.
      03 takasa-dyil                  pic 9(4).
      03 takasa-day                   pic 9(2).
      03 takasa-dgun                  pic 9(2).
   02 takasa-e-tarihi.
      03 takasa-eyil                  pic 9(4).
      03 takasa-eay                   pic 9(2).
      03 takasa-egun                  pic 9(2).
   02 takasa-o-tarihi.
      03 takasa-oyil                  pic 9(4).
      03 takasa-oay                   pic 9(2).
      03 takasa-ogun                  pic 9(2).
   02 takasa-kaynak                   pic x(02).
   02 takasa-ulke                     pic x(03).
   02 takasa-dil-1                    pic x(02).
   02 takasa-dil-2                    pic x(02).
   02 takasa-dil-3                    pic x(02).
   02 takasa-din                      pic x(02).
   02 takasa-unvan                    pic x(20).
   02 takasa-cinsiyet                 pic x.
   02 takasa-meslek                   pic x(20).
   02 takasa-e-mail                   pic x(40).
   02 takasa-web-adresi               pic x(40).
   02 takasa-kis-adrs                 pic x(50).
   02 takasa-kis-adrs1                pic x(50).
   02 takasa-kart-tipi                pic x(2).
   02 takasa-gelis-sayisi             pic 9(3).
   02 takasa-gecmis-cl-tut            pic 9(8)v99.
   02 takasa-aciklama                 pic x(40).
*/:-) Fatura bilgileri 
   02 takasa-unvan1                   pic x(50).   
   02 takasa-unvan2                   pic x(50).
   02 takasa-adres1                   pic x(50).   
   02 takasa-adres2                   pic x(50).
   02 takasa-vdairesi                 pic x(20).
   02 takasa-vno                      pic x(15).
*   02 takasa-vno                      pic x(10).
   02 takasa-il                       pic x(20).
   02 takasa-ilce                     pic x(20).
   02 takasa-tel1                     pic x(15).
   02 takasa-tel2                     pic x(15).
   02 takasa-tel3                     pic x(15).
   02 takasa-fax                      pic x(15).
   02 takasa-gsm                      pic x(15).
   02 takasa-pk                       pic x(10).
*/:-) Diger BÝlgiler
   02 takasa-hobi1                    pic x(02).
   02 takasa-hobi2                    pic x(02).
   02 takasa-hobi3                    pic x(02).
   02 takasa-hobi4                    pic x(02).
   02 takasa-gazete-1                 pic x(02).
   02 takasa-gazete-2                 pic x(02).
   02 takasa-gazete-3                 pic x(02).
   02 takasa-tv-kanali-1              pic x(02).
   02 takasa-tv-kanali-2              pic x(02).
   02 takasa-tv-kanali-3              pic x(02).
   02 takasa-tv-prog-1                pic x(02).
   02 takasa-tv-prog-2                pic x(02).
   02 takasa-tv-prog-3                pic x(02).
   02 takasa-arac-model               pic x(19).
   02 takasa-silindi                  pic 9.
   02 takasa-plaka                    pic x(15).
*/:-) Odeme Bilgileri
   02 takasa-odeme-tipi               pic x.
   02 takasa-odeme-kart-tipi          pic x.
   02 takasa-kart-sahibi              pic x(25).
   02 takasa-muhasebe-kodu            pic x(15).
   02 takasa-kart-no                  pic x(40).
   02 takasa-son-k-tarih.
     03 takasa-son-k-ay               pic 9(02).
     03 takasa-son-k-yil              pic 9(04).
   02 takasa-g-kodu                   pic x(03).
*/:-)kimlik bilgileri
   02 takasa-kim-tcno                 pic 9(11).
   02 takasa-kim-uyruk                pic x(03).
   02 takasa-kim-cinsiyet             pic x.
   02 takasa-kim-medeni               pic x.
   02 takasa-kim-adrs                 pic x(50).
   02 takasa-kim-adrs1                pic x(50).
   02 takasa-b-turu                   pic x.
   02 takasa-seri-no                  pic x(15).
   02 takasa-baba-adi                 pic x(20).
   02 takasa-ana-adi                  pic x(20).
   02 takasa-d-yeri                   pic x(30).
   02 takasa-kim-il                   pic x(20).
   02 takasa-kim-ilce                 pic x(20).
   02 takasa-kim-mahalle              pic x(20).
   02 takasa-kim-cilt                 pic x(10).
   02 takasa-kim-aile-no              pic x(10).
   02 takasa-kim-sira-no              pic x(10).
   02 takasa-k-tarih.
     03 takasa-k-yil                  pic 9(04).
     03 takasa-k-ay                   pic 9(02).
     03 takasa-k-gun                  pic 9(02).
   02 takasa-g-tarih.
     03 takasa-g-yil                  pic 9(04).
     03 takasa-g-ay                   pic 9(02).
     03 takasa-g-gun                  pic 9(02).
   02 takasa-prb-ack                  pic x.
   02 takasa-fat-ulke                 pic x(15).
   02 takasa-kazanilan-puan           pic 9(6).
   02 takasa-kullanilan-puan          pic 9(6).
   02 takasa-puan-kart-no             pic x(10).
   02 takasa-hak-edilen-tip           pic x(02).
   02 takasa-kart-tipi-2              pic x(02).
   02 takasa-gecmis-geceleme          pic 9(5).
   02 takasa-gecmis-kalis-sayisi      pic 9(3).
*   02 takasa-bos                      pic x(08).
   02 takasa-staf-ilk                 pic x(04).
   02 takasa-staf-son                 pic x(04).
   02 takasa-gonderen                 pic x(08).
*
fd trnot label record omitted.
 01 trnot-rec pic x(120).    
*
 FD takasb LABEL RECORD STANDARD.
 01 takasb-REC.
   02 takasb-anah.
      03 takasb-profil-anah.
        05 takasb-profil-sirket      pic x(8).
        05 takasb-profil-no          pic 9(8).
      03 takasb-rez-anah.
        05 takasb-rez-sirket         pic x(8).
        05 takasb-rez-no             pic 9(8).
        05 takasb-rez-sira           pic 99.
   02 takasb-pro-adi                 pic x(20).
   02 takasb-pro-soyadi              pic x(20).         
   02 takasb-acenta                  pic x(4).
   02 takasb-gel-tar.
      03 takasb-gel-yil              pic 9(4).
      03 takasb-gel-ay               pic 9(2).
      03 takasb-gel-gun              pic 9(2).
   02 takasb-git-tar.
      03 takasb-git-yil              pic 9(4).
      03 takasb-git-ay               pic 9(2).
      03 takasb-git-gun              pic 9(2). 
   02 takasb-banka                   pic x(02).
   02 takasb-doviz                   pic x(02).
   02 takasb-pans                    pic x(02).
   02 takasb-pazar                   pic x(02).
   02 takasb-ulke                    pic x(03).
   02 takasb-voucher                 pic x(10).
   02 takasb-t-oda-fiyati            pic 9(7)v99.
   02 takasb-t-ext-fiyati            pic 9(7)v99.
   02 takasb-odano                   pic x(04).
   02 takasb-r-folio                 pic 9(08).
   02 takasb-e-folio                 pic 9(08).
   02 takasb-anlasma                 pic x(02).
   02 takasb-kur-deg                 PIC 9(9)V9(05) COMP-3.
   02 takasb-duz-tarih.
     03 takasb-duz-yil               pic 9(4).
     03 takasb-duz-ay                pic 9(2).
     03 takasb-duz-gun               pic 9(2).
   02 filler                         pic x.
   02 takasb-rez-durumu              pic x.
   02 takasb-gonderen                     pic x(08).
*
 FD takasc LABEL RECORD STANDARD.
 01 takasc-REC.
   02 takasc-anah.
      03 takasc-profil-anah.
        05 takasc-profil-sirket      pic x(8).
        05 takasc-profil-no          pic 9(8).
      03 takasc-rez-anah.
        05 takasc-rez-sirket         pic x(8).
        05 takasc-rez-no             pic 9(8).
        05 takasc-rez-sira           pic 99.
   02 takasc-pro-adi                 pic x(20).
   02 takasc-pro-soyadi              pic x(20).         
   02 takasc-acenta                  pic x(4).
   02 takasc-gel-tar.
      03 takasc-gel-yil              pic 9(4).
      03 takasc-gel-ay               pic 9(2).
      03 takasc-gel-gun              pic 9(2).
   02 takasc-git-tar.
      03 takasc-git-yil              pic 9(4).
      03 takasc-git-ay               pic 9(2).
      03 takasc-git-gun              pic 9(2). 
   02 takasc-banka                   pic x(02).
   02 takasc-doviz                   pic x(02).
   02 takasc-pans                    pic x(02).
   02 takasc-pazar                   pic x(02).
   02 takasc-ulke                    pic x(03).
   02 takasc-voucher                 pic x(10).
   02 takasc-t-oda-fiyati            pic 9(7)v99.
   02 takasc-t-ext-fiyati            pic 9(7)v99.
   02 takasc-odano                   pic x(04).
   02 takasc-r-folio                 pic 9(08).
   02 takasc-e-folio                 pic 9(08).
   02 takasc-anlasma                 pic x(02).
   02 takasc-kur-deg                 PIC 9(9)V9(05) COMP-3.
   02 takasc-duz-tarih.
     03 takasc-duz-yil               pic 9(4).
     03 takasc-duz-ay                pic 9(2).
     03 takasc-duz-gun               pic 9(2).
   02 takasc-durum                   pic x.
   02 takasc-gonderen                    pic x(08).

 

*{Bench}file
*{Bench}end
 WORKING-STORAGE             SECTION.
*{Bench}acu-def
 COPY "acugui.def".
 COPY "acucobol.def".
 COPY "crtvars.def".
 COPY "showmsg.def".
*{Bench}end
 copy "adres.wrk".
 copy "acuserve.wrk".
*{Bench}copy-working
 COPY "proguns.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "proguns.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION.
*{Bench}end
*{Bench}declarative
*{Bench}end
 COPY "proguns.dcl".
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
 COPY "proguns.prd".
 COPY "proguns.evt".
*{Bench}end
 COPY "dsyhata.prc".
  destroy-window-proc.
     destroy Form1-Handle.
