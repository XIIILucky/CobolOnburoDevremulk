*
 adresleri-tasi.
*-----------<GECICI OLARAK YERLESTIRILDI>---------------*
    move 01           to isyeri-no-tasi.
    move "demo2001"   to isyeri-adres-tasi.
    move "ASYA"       to k-kodu-tasi.
    set turkce        to true.
*    move 04           to gun-tasi
*    move 07           to ay-tasi
*    move 2001         to yil-tasi.
*-------------------------------------------------------*

    move isyeri-adres-tasi     to
         genel-dosya-adres     genelfis-dosya-adres takvim-dosya-adres
         konum-dosya-adres     odalar-dosya-adres   ulke-dosya-adres
         banka-dosya-adres     doviz-dosya-adres    dagilim-dosya-adres
         acenta-dosya-adres    acenhrk-dosya-adres  kontrat-dosya-adres
         fiyatana-dosya-adres  fiyat-dosya-adres    aksiyon-dosya-adres
         aksiyhrk-dosya-adres  stopsale-dosya-adres stophrk-dosya-adres
         bilbord-dosya-adres   rez-dosya-adres      cast-dosya-adres
         turizm-dosya-adres    istdata-dosya-adres  konuk-dosya-adres
         ozluk-dosya-adres     karalist-dosya-adres uzatma-dosya-adres
         odadegis-dosya-adres  depkod-dosya-adres   postkod-dosya-adres
         extpost-dosya-adres   romhrk-dosya-adres   exthrk-dosya-adres
         silhrk-dosya-adres    cektr-dosya-adres    fatura-dosya-adres
         acenfat-dosya-adres   onkasa-dosya-adres   kur-dosya-adres
         dov-boz-dosya-adres   onavans-dosya-adres  kodlar02-dosya-adres
         ajanda-dosya-adres    fihrist-dosya-adres  harf-dosya-adres
         teknik-dosya-adres    mail-dosya-adres     halk-dosya-adres
         cevap1-dosya-adres    cevap2-dosya-adres   soru-dosya-adres
         trkod-dosya-adres     polihrk1-dosya-adres polihrk2-dosya-adres
         telkod-dosya-adres    teldata-dosya-adres  telkim-dosya-adres
         telerr-dosya-adres    kategori-dosya-adres depozit-dosya-adres.



*genel-oku.
    open input genel
    move 1 to genel-anahtar
    read genel no lock invalid continue
         not invalid
         move calis-yil   to yil-tasi
         move calis-ay    to  ay-tasi
         move calis-gun   to gun-tasi
    end-read
    close genel.

 fileerr-proc.
    call "c$rerr" using extend-stat text-message 1.
    move extend-stat to fileerr-linkage-hata-no.
    call "c$rerrname" using fileerr-linkage-dosya-adi.
    call "/asya/ytl/obj/otel/fileerr.asy" using fileerr-linkage-bilgiler
         on exception
            perform callerr-proc
    not on exception
         cancel "/asya/ytl/obj/otel/fileerr.asy"
    end-call.

 callerr-proc.
    call "c$callerr" using fileerr-linkage-hata-no.
    move all low-values to fileerr-linkage-dosya-adi.
    evaluate fileerr-linkage-hata-no
         when "01"  move "Program Bulunamadi                                  " to fileerr-linkage-dosya-adi(1:19)
         when "02"  move "Cagrilan Program Asya-Soft Program Formatinda Degil " to fileerr-linkage-dosya-adi(1:52)
         when "03"  move "Cagrilan Program  Istenilen Yapida Degil            " to fileerr-linkage-dosya-adi(1:52)
         when "04"  move "Programin Yuklenmesi Icin Hafiza Yetersiz           " to fileerr-linkage-dosya-adi(1:52)
         when "05"  move "Program Versiyonu Uymuyor                           " to fileerr-linkage-dosya-adi(1:52)
         when "06"  move "Hafizada Calisan Program Tekrar Yuklenemez          " to fileerr-linkage-dosya-adi(1:52)
         when "07"  move "Hata Kodu : 07 Bilinmeyen Hata                      " to fileerr-linkage-dosya-adi(1:52)
         when "08"  move "Program Yapisi Istenilen Formatta Degil             " to fileerr-linkage-dosya-adi(1:52)
         when "09"  move "Ag Ortami Icin Share.exe Calistirilmali             " to fileerr-linkage-dosya-adi(1:52)
         when "14"  move "Japonya Runtime Sistemi Desteklenmiyor              " to fileerr-linkage-dosya-adi(1:52)
         when other move "Bilinmeyen Hata Kodu ->                             " to fileerr-linkage-dosya-adi(1:52)
                    move fileerr-linkage-hata-no                                to fileerr-linkage-dosya-adi(26:2)
    end-evaluate.
    display message box
            fileerr-linkage-dosya-adi,
            x"0a0d",
            "Lutfen Ant-Bim Bilgisayari Arayiniz",
            title "Program Cagirma Hatasi"
            icon mb_error_icon,
            type mb_ok.

 mesaj-ver.
    call "mesaj" using mesaj-link on exception
         display message box
                 "Mesaj Programi Bulunamadi",
                 x"0a0d"
                 "Lutfen Mesaji Ant-Bim Bilgisayara Iletiniz"
                 icon mb_error_icon
                 title "Hata",
                 type mb_ok
    not on exception
         cancel "mesaj"
    end-call.