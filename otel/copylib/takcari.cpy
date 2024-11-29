*
*/

* 
 takcari-kontrol.
    move 0 to cari-bulundu bulunan-cari-kodu.
        open i-o takcari.
       move  bakilacak-no  to takcari-vergino

       read takcari  no lock key  takcari-vergino 
          invalid continue
          not invalid
               move 1 to  cari-bulundu 
               move takcari-anah to  bulunan-cari-kodu
       end-read
    close takcari
     
     .
*
 takcari-ilk.
              open i-o genelfis
                     initialize genelfis-rec 
                     move 1        to genelfis-anahtar
                     read genelfis no lock invalid 
                          continue 
                     not invalid
                           add 1 to ekran-fis-1
                           move ekran-fis-1   to takcari-no
                           rewrite genelfis-rec end-rewrite 
                     end-read 
                     close genelfis
             move k-kodu-tasi to takcari-k
             open output takcari close takcari.
              open i-o takcari
             open input cari
      
             initialize  cari-rec
             move "12" to cari-kodu(1:2)
             start cari key > cari-kodu invalid continue
                 not invalid
                  perform until fs-cari = "10"
                     read cari next no lock end move "10" to fs-cari
                        not end
                          if     cari-kodu(1:2) > "12" then 
                                  move "10" to fs-cari
                               else
                               if c-vergi-no not = spaces 
                              
                                 move function numval(c-vergi-no) to svno 
                                 move svno to takcari-vergino
                                 move cari-kodu to takcari-anah
                                 write takcari-rec invalid
                                  continue
                                 end-write
                              end-if
                           end-if
                       end-read
                   end-perform
              end-start
             close cari close takcari 
              .
