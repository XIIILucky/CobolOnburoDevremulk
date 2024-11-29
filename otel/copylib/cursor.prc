***************************************************
*help-id 0 ise henuz o kontrolun islemi tamamlanmamis
*        1 ise ok
*        2 ise onemsiz 
***************************************************
 kursor-tespit.
      initialize kursor-sayi kursor-ana-dizi.
      inquire window 
              lines in hwnd-lines 
              size  in hwnd-size.
      perform varying kursor-i from 1 by kursor-artis until kursor-i > hwnd-lines
              after kursor-ii from 1 by kursor-artis until kursor-ii > hwnd-size
                    inquire control line kursor-i col kursor-ii
                                    id in kursor-temp
                                    class in cursor-class
                    if kursor-temp <> 0 and cursor-ok
                       add 1 to kursor-sayi
                       move kursor-i    to kursor-line(kursor-sayi)
                       move kursor-ii   to kursor-col(kursor-sayi)
                       move kursor-temp to kursor-id(kursor-sayi)
                    end-if
      end-perform.

*/ siralama icin list-box olusturuluyor ....
      display list-box line lb-line col lb-col
                       lines 10 size 20 
                       visible = false
                       data-columns (1,5,9)
                       display-columns(1,6,11)
                       alignment("U","U","U")
                       mass-update = 0
                       handle sort-handle
                       help-id = 2.

      perform varying kursor-temp from 1 by 1 until kursor-temp > kursor-sayi
              modify control line lb-line col lb-col
                     property 4097,
                     kursor-ana-dizi-occ(kursor-temp)
      end-perform.

      initialize kursor-ana-dizi.
      perform varying kursor-temp from 1 by 1 until kursor-temp > kursor-sayi
              modify control line lb-line col lb-col
                     property 7
                     (kursor-temp)
              inquire control line lb-line col lb-col
                      property 4104,
                      kursor-ana-dizi-occ(kursor-temp)
      end-perform.
      destroy sort-handle.
*
 kursor-sifirla.
      perform varying cr-i from 1 by 1 until cr-i > kursor-sayi
              modify control line kursor-line(cr-i)
                             col  kursor-col(cr-i)
                             help-id = 0
      end-perform.

 kursor-birle.
      perform varying cr-i from 1 by 1 until cr-i > kursor-sayi
              modify control line kursor-line(cr-i)
                             col  kursor-col(cr-i)
                             help-id = 1
      end-perform.
 kursor-kontrol.
      if event-control-id < control-id 
         exit paragraph.
      perform kursor-index-bul.
      if key-status = 96
      perform varying kursor-temp from cr-i by 1 until kursor-temp > event-control-id
              inquire control line kursor-line(kursor-temp)
                              col  kursor-col(kursor-temp)
                              help-id in kursor-help-id
              if kursor-help-id = 0
                 move 4 to accept-control
                 move kursor-id(kursor-temp) to control-id
                 exit paragraph
              end-if
      end-perform
      else
           inquire control line kursor-line(cr-i)
                           col  kursor-col(cr-i)
                           help-id in kursor-help-id
           if kursor-help-id = 0
              move 4 to accept-control
           end-if
      end-if.

 kursor-basarisiz.
      perform kursor-index-bul.
      modify control line kursor-line(cr-i) col kursor-col(cr-i)
             help-id = 0.
 kursor-basarili.
      perform kursor-index-bul.
      modify control line kursor-line(cr-i) col kursor-col(cr-i)
             help-id = 1.
 kursor-index-bul.
      perform varying cr-ii from 1 by 1 until cr-ii > kursor-sayi
              if kursor-id(cr-ii) = control-id
                 move cr-ii to cr-i
                 exit perform
              end-if
      end-perform.
 