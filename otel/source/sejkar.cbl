*{Bench}prg-comment
* sejkar.cbl
* sejkar.cbl is generated from D:\asya\acugt.ytl\otel\sejkar.Psf
*{Bench}end
 IDENTIFICATION              DIVISION.
*{Bench}prgid
 PROGRAM-ID. sejkar.
 AUTHOR. Fýrat.
 DATE-WRITTEN. 26 Haziran 2018 Salý 16:15:57.
 REMARKS. 
*{Bench}end

 ENVIRONMENT                 DIVISION.
 CONFIGURATION               SECTION.
 SPECIAL-NAMES.
*{Bench}activex-def
*{Bench}end
*{Bench}decimal-point
*{Bench}end
 INPUT-OUTPUT                SECTION.
 FILE-CONTROL.
         COPY "genel.sel".
         COPY "genelfis.sel".
         COPY "dokumer.sel".
         COPY "errorlog.sel".                                                    
         COPY "logindex.sel".
         copy "sejkar.sel".
         copy "sejkkod.sel".
         copy "acenta.sel". 
         copy "kodlar02.sel".  
         copy "konum.sel". 
         copy "ulke.sel".
         copy "cast.sel".
         copy "rez.sel".
         copy "odalar.sel".
         copy "takvim.sel".
                  SELECT takasop ASSIGN RANDOM, takasop-dosya
                  ORGANIZATION INDEXED
                  ACCESS DYNAMIC
                  RECORD takasop-anah
                  STATUS FS-takasop.
*{Bench}file-control
*{Bench}end
 DATA                        DIVISION.
 FILE                        SECTION.
         copy "cast.lib".
         copy "rez.lib".
         copy "odalar.lib".
         COPY "genel.lib".
         COPY "genelfis.lib".
         COPY "dokumer.lib".
         COPY "errorlog.lib".                                                    
         COPY "logindex.lib".
         copy "sejkar.lib". 
         copy "sejkkod.lib".
         copy "acenta.lib".  
         copy "kodlar02.lib".
         copy "konum.lib". 
         copy "ulke.lib".
         copy "takvim.lib".
FD takasop LABEL RECORD STANDARD.
01 takasop-rec.
          02 takasop-anah.
             03 takasop-kodu         pic x(119).


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
     
 78 max-kayitresp                     value 10000.

 01 entegrator-kullanici              pic x(50).
 01 entegrator-sifre                  pic x(50).
    
 01 kayitlikullanicilistele. 
    02 kayitzamani                    pic x(08).

 01 sendconfirmationlist.
    02 SendConfirmationlist-occ occurs max-kayitresp times.
      03 SendConfirmationlist-keyfield          pic x(150).
      03 SendConfirmationlist-Status            pic x.
    02 SendConfirmationlist_Error.
       03 SendConfirmationlist_code             pic x(100).
       03 SendConfirmationlist_error_message    pic x(100).
    02 SendConfirmationlist_info_message        pic x(100).
    02 SendConfirmationlist_ok                  pic x(100).

 01 sejouracenta.
    02 sejouracenta-occ occurs max-kayitresp times.
       03 sejouracenta-kodu                  pic x(100).
       03 sejouracenta-adi                   pic x(300).
    02 sejouracenta_Error.
       03 sejouracenta_code                  pic x(100).
       03 sejouracenta_error_message                pic x(100).
    02 sejouracenta_info_message               pic x(100).
    02 sejouracenta_ok                         pic x(100).

 01 notconfirmemessage.
    02 notconfirmemessage_occ occurs max-kayitresp times.
       03 notconfirmemessage_kodu                  pic x(100).
       03 notconfirmemessage_adi                   pic x(300).
    02 notconfirmemessage_Error.
       03 notconfirmemessage_code                  pic x(100).
       03 notconfirmemessage_error_message                pic x(100).
    02 notconfirmemessage_info_message               pic x(100).
    02 notconfirmemessage_ok                         pic x(100).

 01 sejourtanimlamalar.     
      03 SejourBoards-tanim.
         04 SejourBoard-occ occurs max-kayitresp times.
            05 sejourboard-Kodu           pic x(10).
            05 sejourboard-Otel           pic x(50).
            05 sejourboard-PaximumId      pic x(20).
            05 sejourboard-Tanim          pic x(50).
      03 SejourRoomTypes-tanim.
         04 SejourRoomType-occ occurs max-kayitresp times.
            05 SejourRoomType-Otel        pic x(50).
            05 SejourRoomType-Otip        pic x(20).
            05 SejourRoomType-PaximumId   pic x(20).
            05 SejourRoomType-Tanim       pic x(50).
      03 SejourRooms-tanim.
         04 SejourRoom-occ occurs max-kayitresp times.
            05 SejourRoom-MaxAdl          pic x(10).
            05 SejourRoom-MaxChd          pic x(10).
            05 SejourRoom-MaxPax          pic x(10).
            05 SejourRoom-MinAdl          pic x(10).
            05 SejourRoom-Oda             pic x(50).
            05 SejourRoom-Otel            pic x(50).
            05 SejourRoom-Pax             pic x(50).
            05 SejourRoom-PaximumId       pic x(20).
            05 SejourRoom-Tanim           pic x(50).
     03 SejourNationals-tanim.
         04 SejourNationals-occ occurs max-kayitresp times.
            05 SejourNational-Kodu        pic x(3).
            05 SejourNational-adi         pic x(50).


 01 checkreservationfile.
    02 checkreservationfile-occ occurs max-kayitresp times.
       03 checkreservationfile-kodu                  pic x(100).       
    02 checkreservationfile_Error.
       03 checkreservationfile_code                  pic x(50).
       03 checkreservationfile_error_message                pic x(50). 
    02 checkreservationfile_ok                         pic x(10).

 01 checkreservationuploadfile.
    02 checkreservationuploadfile_occ occurs max-kayitresp times.
       03 checkreservationuploadfile_kodu                  pic x(100).       
    02 checkreservationuploadfile_Error.
       03 checkreservationuploadfile_code                  pic x(50).
       03 checkreservationuploadfile_error_message                pic x(50). 
    02 checkreservationuploadfile_ok                         pic x(10).
   
        
 01 confirmelist.
   02 comfirme-ReservationPms.
     03 confirmelist-occ occurs max-kayitresp times.
         05 confirme-AccomId              pic x(3).
         05 confirme-AccomName            pic x(30).
         05 confirme-Adults            pic x(3).
         05 confirme-AgencyId            pic x(100).
         05 confirme-AgencyName            pic x(50).
         05 confirme-CheckIn            pic x(20).
         05 confirme-CheckOut            pic x(20).
         05 confirme-Childs            pic x(2).
         05 confirme-ConfirmDate            pic x(20).
         05 confirme-ConfirmationNo            pic x(20).
         05 confirme-ConfirmationStatus            pic x(2).
         05 confirme-ConfirmeNote            pic x(40).
         05 confirme-ExtraBed pic x(5).
         05 confirme-FisNo pic x(20).
         05 confirme-FreeOfCharge pic x(3).
         05 confirme-HoneyMoon pic x(10).
         05 confirme-HotelId pic x(100).
         05 confirme-HotelName pic x(100).
         05 confirme-Infants pic x(2).
         05 confirme-KeyField pic x(150).
         05 confirme-LastChangeUser pic x(20).
         05 confirme-LogId          pic 9(10).
         05 confirme-Nights pic x(3).
         05 confirme-Note pic x(40).
         05 confirme-OriginalHotelCode pic x(100).
         05 confirme-Pax pic x(3).
         05 confirme-PaximumId pic x(10).
         05 confirme-PmsStatus pic x(2).
         05 confirme-PromosyonRoom pic x(2).
         05 confirme-QuotaType pic x(2).
         05 confirme-ReservationStatus pic x(2).
         05 confirme-RoomCount pic x(4).
         05 confirme-RoomId pic x(10).
         05 confirme-RoomName pic x(50).
         05 confirme-RoomNo pic x(10).
         05 confirme-RoomTypeId pic x(10).
         05 confirme-RoomTypeName pic x(20).
         05 confirme-SellDate pic x(20).
         05 confirme-serviceid pic x(300).
         05 confirme-SoldCurrency pic x(10).     
         05 confirme-SoldPrice pic x(20).
         05 confirme-VoucherNo pic x(20).
         05 confirme-TourOpCode pic x(10).
         05 confirme-TourOpname pic x(100).
           05 customers.
             06 confirme-CustomerPms-occ occurs 7 times.
             07 confirme-CustomerPms-Age          pic x(3).
             07 confirme-CustomerPms-Arrival      pic x(20).
             07 confirme-CustomerPms-ArrivalTime  pic x(20).
             07 confirme-CustomerPms-BirthDate  pic x(20).
             07 confirme-CustomerPms-Departure  pic x(20).
             07 confirme-CustomerPms-DepartureTime  pic x(20).
             07 confirme-CustomerPms-MusNo  pic x(20).
             07 confirme-CustomerPms-MusTakipNo  pic x(20).
             07 confirme-CustomerPms-Name  pic x(100).
             07 confirme-CustomerPms-Nationality  pic x(20).
             07 confirme-CustomerPms-NationalityString  pic x(30).
             07 confirme-CustomerPms-Title  pic x(10).

 01 receivelist.
   02 comfirme-ReservationPms.
     03 receivelist-occ occurs max-kayitresp times.
         05 receive-AccomId              pic x(3).
         05 receive-AccomName            pic x(30).
         05 receive-Adults            pic x(3).
         05 receive-AgencyId            pic x(100).
         05 receive-AgencyName            pic x(50).
         05 receive-CheckIn            pic x(20).
         05 receive-CheckOut            pic x(20).
         05 receive-Childs            pic x(2).
         05 receive-ConfirmDate            pic x(20).
         05 receive-ConfirmationNo            pic x(20).
         05 receive-ConfirmationStatus            pic x(2).
         05 receive-receiveNote            pic x(40).
         05 receive-ExtraBed pic x(2).
         05 receive-FisNo pic x(20).
         05 receive-FreeOfCharge pic x(2).
         05 receive-HoneyMoon pic x(2).
         05 receive-HotelId pic x(100).
         05 receive-HotelName pic x(100).
         05 receive-Infants pic x(2).
         05 receive-KeyField pic x(150).
         05 receive-LastChangeUser pic x(20).
         05 receive-logid          pic 9(10).
         05 receive-Nights pic x(3).
         05 receive-Note pic x(40).
         05 receive-OriginalHotelCode pic x(100).
         05 receive-Pax pic x(3).
         05 receive-PaximumId pic x(10).
         05 receive-PmsStatus pic x(2).
         05 receive-PromosyonRoom pic x(2).
         05 receive-QuotaType pic x(2).
         05 receive-ReservationStatus pic x(2).
         05 receive-RoomCount pic x(2).
         05 receive-RoomId pic x(10).
         05 receive-RoomName pic x(20).
         05 receive-RoomNo pic x(10).
         05 receive-RoomTypeId pic x(10).
         05 receive-RoomTypeName pic x(10).
         05 receive-SellDate pic x(20).
         05 receive-serviceid pic x(300).
         05 receive-SoldCurrency pic x(10).     
         05 receive-SoldPrice pic x(10).
         05 receive-VoucherNo pic x(20).
         05 receive-TourOpCode pic x(10).
         05 receive-TourOpname pic x(100).
           05 customers.
             06 receive-CustomerPms-occ occurs 7 times.
             07 receive-CustomerPms-Age          pic x(3).
             07 receive-CustomerPms-Arrival      pic x(20).
             07 receive-CustomerPms-ArrivalTime  pic x(20).
             07 receive-CustomerPms-BirthDate  pic x(20).
             07 receive-CustomerPms-Departure  pic x(20).
             07 receive-CustomerPms-DepartureTime  pic x(20).
             07 receive-CustomerPms-MusNo  pic x(20).
             07 receive-CustomerPms-MusTakipNo  pic x(20).
             07 receive-CustomerPms-Name  pic x(20).
             07 receive-CustomerPms-Nationality  pic x(20).
             07 receive-CustomerPms-NationalityString  pic x(20).
             07 receive-CustomerPms-Title  pic x(10).


 01 request-payload             usage pointer.
 01 response-payload            usage pointer.
 01 response-status             pic 9(3) value zero.
 01 response-status-2           pic 9(3) value zero.
 01 response-len                pic s9(9).
 01 request-len                 pic s9(9).

     copy "lixmlall.cpy".

 01 Desired-SOAP-Action.
    05 filler pic x(10) value 'SOAPAction'.
    05 filler pic x value x"00".
    05 hangiservis      pic x(50).
       88 efaturakayitlikullanicilistele     value "eFaturaKayitliKullaniciListele".
 01 x509-belge    pic x(100).

 01  Post-Address pic x(100).
*       "http://www.w3schools.com/webservices/tempconvert.asmx".
*      "https://merkeztest.efatura.gov.tr/EFaturaMerkez/services/EFatura".
*      "http://178.251.43.49:8080/efatura/ws/connectorService".
*        "https://efatura.asyasoft.com.tr/efatura/efat.srf".

 78  Content-Type value "text/xml; charset=utf-8".
*{Bench}copy-working
 COPY "sejkar.wrk".
*{Bench}end
 LINKAGE                     SECTION.
*{Bench}linkage
 COPY "sejkar.lks".
*{Bench}end
 SCREEN                      SECTION.
*{Bench}copy-screen
 COPY "sejkar.scr".
*{Bench}end

*{Bench}linkpara
 PROCEDURE DIVISION USING HTTP-RESPONSE1.
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
 COPY "sejkar.prd".
 COPY "sejkar.evt".
*{Bench}end
 COPY "dsyhata.prc".
 copy "reffilt.cpy".
 destroy-window-proc.
     destroy Form1-Handle.

