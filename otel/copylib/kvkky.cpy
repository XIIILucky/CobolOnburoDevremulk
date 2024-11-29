*
 kvkky-yetki-yaz.
    open i-o kvkky
    initialize kvkky-rec
    move program-modul          to kvkky-modul
    move called-program         to kvkky-program
    move wrk-kvkky-sutun-adi    to kvkky-kolon-adi
    read kvkky no lock invalid
         continue
    end-read
    move wrk-kvkk-eh            to kvkky-eh
    write kvkky-rec invalid rewrite kvkky-rec end-rewrite end-write
    close kvkky.

*
 kvkk-kontrol.
    initialize kvkky-rec
    move program-modul                              to kvkky-modul
    move called-program                             to kvkky-program
    move wrk-dokumer-rec(grid0-bp(ii):grid0-au(ii)) to kvkky-kolon-adi
    read kvkky no lock invalid
         continue
    end-read 

    if not kvkky-yetki-yok
       unstring my-record-area(iii:grid0-au(ii)) delimited by " " into
                kelime(1)
                kelime(2)
                kelime(3)
                kelime(4)
                kelime(5)
                kelime(6)
                kelime(7)
                kelime(8)
                kelime(9)
                kelime(10)
    
       inspect kelime-occurs replacing all spaces by low-values
    
       perform varying r
       from 1
       by 1
       until r > 10

          initialize word-length
          perform varying word-length
          from 1 
          by 1
          until word-length > 50
             if kelime(r)(word-length:1) = low-values 
                exit perform  
             end-if
          end-perform 
          compute word-length = word-length - 3

          if kelime(r) <> low-values
             
*             move "**" to kelime(r)(1:2) 
             move all "*" to kelime(r)(3:word-length)
          end-if
       end-perform                                                                                                                   
    
       initialize my-record-area(iii:grid0-au(ii))
       move low-values                 to my-record-area(iii:grid0-au(ii))
    
       perform varying r
       from 1
       by 1
       until r > 10
           string my-record-area(iii:grid0-au(ii)) 
                  kelime(r) delimited by low-values
                  " "       delimited by low-values
                  into my-record-area(iii:grid0-au(ii))
       end-perform
       inspect my-record-area(iii:grid0-au(ii)) replacing all low-values by spaces
    end-if.

*
 kvkk-tikle.
******************************* KVKK
    if k-super = "E" and
       k-ozl-isl-evet
       inquire grid1(i,3),
               hidden-data in wrk-kvkk-eh
       if wrk-kvkk-evet
          modify grid1(i),
                 x = 3 
                 bitmap          = bos-bmp
                 bitmap-width    = 16
                 bitmap-number   = 1
                 bitmap-trailing = 1
                 hidden-data     = "H"
       else
          modify grid1(i),
                 x = 3 
                 bitmap          = yes-bmp
                 bitmap-width    = 16
                 bitmap-number   = 1
                 bitmap-trailing = 1
                 hidden-data     = "E"
       end-if
    
       inquire grid1(event-data-2,2),
               cell-data in wrk-kvkky-sutun-adi
       inquire grid1(i,3),
               hidden-data in wrk-kvkk-eh | Dataya yazdirmadan once son durumunu aliyoruz.
       perform kvkky-yetki-yaz
    else    
       display message box
               "KVKK kapsamindaki bilgileri gizleme/acma yetkiniz yok." x"0a0d"
               title "Uyari"
               icon mb-error-icon
    end-if.
******************************* KVKK

*
 grid-baslik-kvkk-kontrol.
    initialize kvkky-rec
    move program-modul          to kvkky-modul
    move called-program         to kvkky-program
    move grid0-detay-adi(i)     to kvkky-kolon-adi
    read kvkky no lock invalid
         continue
    end-read
    if kvkky-yetki-var 
       modify grid1(ii),
              x = 3 
              bitmap          = yes-bmp
              bitmap-width    = 16
              bitmap-number   = 1
              bitmap-trailing = 1
              hidden-data     = "E"
    else
       modify grid1(ii),
              x = 3 
              bitmap          = bos-bmp
              bitmap-width    = 16
              bitmap-number   = 1
              bitmap-trailing = 1
              hidden-data     = "H"
    end-if.
