*/ Hafizadaki dizi
78 max-dsg                   value 200.
78 max-det                   value 24.
78 max-liste-satir           value 66.
01 dsg-degiskenler.
   02 dsg-dizi occurs max-liste-satir times pic x(max-dsg).
   02 dsg-sat-bos  occurs 28 times.
      03 dsg-bos-sat-i       pic 9(2).
      03 dsg-bos-sat-ii      pic 9(2).
   02 dsg-kap-bos  occurs 28 times.
      03 dsg-bos-kap-i       pic 9(2).
   02 tanim-degiskenler.
      03 tanimlar occurs 30 times pic x(50).
   02 tanim-i                        pic 9(2).
   02 dsg-i                  pic 9(3).
   02 dsg-ii                 pic 9(3).
   02 dsg-a                  pic 9(3).
   02 dsg-b                  pic 9(3).
   02 dsg-real               pic 9(3).
   02 dsg-det-real           pic 9(3).
   02 dsg-kap-real           pic 9(3).
   02 dsg-pesin              pic s9(12).
   02 dsg-kredi              pic s9(12).
   02 dsg-max-det            pic 9(3).
   02 dsg-yan-det            pic 9(3).
   02 dsg-max-kap            pic 9(3).
   02 dsg-det-yer            pic 9(2).
   02 dsg-kap-yer            pic 9(2).
   02 dsg-tahsilat.
      03 dsg-tahsilat-filler  pic x(07).
      03 dsg-tahsilat-tut     pic zzzzz,zzz.z9.
   02 dsg-tarih.
      03 dsg-gun             pic 9(2).
      03 dsg-ay              pic 9(2).
      03 dsg-yil             pic 9(4).
   02 dsg-tarih1 redefines dsg-tarih pic 9(8).
   02 unst-sayi                      pic 9(3).
   02 unst-i                         pic 9(3).
   02 unst-ii                        pic 9(3).
   02 unst-ana-dizi.
      03 unst      occurs max-det times.
         04 unst-isl         pic x(3).
            88 newline         value "NL ".
            88 faturatarihi    value "FTT".
            88 musteriadi      value "MAD".
            88 musterisoy      value "MAS".
            88 adres1          value "AD1".
            88 adres2          value "AD2".
            88 il              value "IL ".
            88 ilce            value "ILC".
            88 ulke            value "ULK".
            88 vergino         value "VN ".
            88 vergidaire      value "VD ".
            88 aciklama        value "ACK".
            88 Matrah          value "MAT".
            88 nettoplam       value "NTT".
            88 kdv             value "KDV".
            88 parayaz         value "PR ".
            88 indirim         value "IND".
            88 geneltoplam     value "GET".
            88 detay           values are "D01","D02","D03","D04","D05"
                                          "D06","D07","D08","D09","D10"
                                          "D11","D12","D13","D14","D15",
                                          "D16","D17","D18","D19","D20",
                                          "D21","D22","D23","D24","D25".
            88 yeni-tanim      values are "A01","A02","A03","A04","A05"
                                          "A06","A07","A08","A09","A10"
                                          "A11","A12","A13","A14","A15",
                                          "A16","A17","A18","A19","A20",
                                          "A21","A22","A23","A24","A25".
            88 sayfaatla       value "SA ".
            88 bos             value "BO ".
            88 d01             value "D01".
            88 d02             value "D02".
            88 d03             value "D03".
            88 d04             value "D04".
            88 d05             value "D05".
            88 d06             value "D06".
            88 d07             value "D07".
            88 d08             value "D08".
            88 d09             value "D09".
            88 d10             value "D10".
            88 d11             value "D11".
            88 d12             value "D12".
            88 d13             value "D13".
            88 d14             value "D14".
            88 d15             value "D15".
            88 d16             value "D16".
            88 d17             value "D17".
            88 d18             value "D18".
            88 d19             value "D19".
            88 d20             value "D20".
            88 d21             value "D21".
            88 d22             value "D22".
            88 d23             value "D23".
            88 d24             value "D24".
            88 d25             value "D25".
            88 eof             value "EOF".
         04 unst-bp          pic 9(3).
         04 unst-au          pic 9(2).
   02 durum                  pic x.
01 formatlar.
   02 tarih-format           pic xx/xx/xxxx.
   02 z-format               pic zzzz.
   02 deci-format            pic zzz,zzz.zzz.
   02 tl1-format             pic zzz,zzz.zz.
   02 tl2-format             pic zzz,zzz,zzz.zz.

