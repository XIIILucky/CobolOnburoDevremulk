*
        SELECT musteri ASSIGN RANDOM,umusteri-DOSYA
           ORGANIZATION INDEXED
           ACCESS MODE IS dynamic
           RECORD KEY IS musteri-ANAH
           ALTERNATE RECORD musteri-anah1 = musteri-no                 DUPLICATES 
           ALTERNATE RECORD musteri-ilk = musteri-adi, musteri-soyadi  DUPLICATES 
           ALTERNATE RECORD musteri-anah2 = musteri-g-tarih            DUPLICATES 
           STATUS FS-musteri.
