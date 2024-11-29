*
 kolbant-kontrolleri.
      initialize hatali-bant 
                 algo-ara-top algo-sonuc
      perform kolbant-algor-kont
      if hatali-bant = 1
         exit paragraph
      end-if                  

      if stok-var = 1
         perform stok-seri-kontrol
         if kolbant-seri-buldum = 0 
            move 1 to  hatali-bant 
            exit paragraph
         end-if  
      end-if  
  
      perform kolbant-muker-kont
      if hatali-bant = 1
         exit paragraph
      end-if  
      
      perform kolbant-aktif-kont
      if hatali-bant = 1
         exit paragraph
      end-if

       .
*
 kolbant-aktif-kont.
      open i-o kolbant rez 
      initialize kolbant-rec rez-rec 
      move rez-kont to rez-no
      read rez no lock invalid
           display message box "Kolbandi kaydi esnasinda rezervasyon no bulunamadi." new-line
                               "Lutfen rezervasyonu kaydedip deneyiniz.." 
                         title "Uyari"
      not invalid
          compute kisi-top = rez-buyuk +
                             rez-kucuk + 
                             rez-free
      end-read
      if kisi-top = 0
         move 1 to hatali-bant
      end-if
      move 1        to aktif-bant-say
      move rez-kont to kolbant-rez-no 
      start kolbant key not < kolbant-anah invalid
          continue
      not invalid
      perform with test after until fs-kolbant = "10" 
      read kolbant next no lock end move "10" to fs-kolbant
      not at end 
          if kolbant-rez-no <> rez-kont 
             exit perform 
          end-if
          if kolbant-durumu <> 1 
             exit perform cycle
          end-if
          add 1 to aktif-bant-say 
      end-read 
      end-perform 
      end-start
      if kisi-top < aktif-bant-say 
         display message box "Aktif kolbandi sayisi rezervasyon toplam kisi sayisindan fazla olamaz." new-line
                             "Daha fazla kolbandi tanimlamasi sisteme EXTRA PAX olarak islenecektir." new-line
                             "Devam edecek misiniz...?"
                       title "[Bildirim]"
                        type 2
                        icon 2
                   returning return-code
         if return-code = 2
            move 1 to hatali-bant
         else
            move 1 to tmp-ex-pax
         end-if
      end-if
      close kolbant rez 
      .
*
 kolbant-muker-kont.    
      open i-o kolbant
      initialize kolbant-rec 
      move fullbant-kont to kolbant-seri-no  
      start kolbant key not < kolbant-anah1 invalid
            continue 
      not invalid
      perform with test after until fs-kolbant = "10" 
      read kolbant next no lock end move "10" to fs-kolbant
      not at end 
          if kolbant-seri-no <> fullbant-kont exit perform end-if
          if kolbant-durumu  <> 1 exit perform cycle end-if

          if kolbant-rez-no = rez-kont 
             display message box "Kolbandi bu rezervasyona baglidir." new-line
                                 "Lutfen kontrol ediniz.." 
                           title "Uyari"
          else
             display message box "Kolbandi asagida yazili rezervasyona baglidir." new-line
                                 "Lutfen kontrol ediniz.." new-line
                                 "Rezervasyon Numarasi : " kolbant-rez-no
                           title "Uyari"
          end-if
          move 1 to hatali-bant
          exit perform 

      end-read 
      end-perform 
      end-start
      close kolbant
      .
*
 kolbant-algor-kont.
       if fullbant-kont(8:1) <> spaces or 
          fullbant-kont(7:1) = spaces
          move 1 to hatali-bant
          display message box "Kolbandi 7 hane olmak zorundadir." new-line
                              "Lutfen kontrol ederek giriniz.." 
                        title "Uyari"
          exit paragraph
       end-if
       compute algo-ara-top = function numval(bant-kont(1:1)) +
                              function numval(bant-kont(2:1)) +
                              function numval(bant-kont(3:1)) +
                              function numval(bant-kont(4:1)) +
                              function numval(bant-kont(5:1)) +
                              function numval(bant-kont(6:1)) 

       compute algo-sonuc = function numval(algo-ara-top(1:1)) +
                            function numval(algo-ara-top(2:1)) 
       if algo-sonuc > 9
          compute algo-sonuc = function numval(algo-sonuc(1:1)) +
                               function numval(algo-sonuc(2:1)) 
       end-if
       if algo-sonuc = function numval(fullbant-kont(7:1))
          move 0 to hatali-bant
       else 
          move 1 to hatali-bant
          display message box "Kolbandi algoritmaya uymamaktadir." new-line
                              "Lutfen kontrol ederek giriniz.." 
                        title "Uyari"
       end-if
      .

*
 kolbant-algo-kont.
       compute algo-ara-top = function numval(bant-kont(1:1)) +
                              function numval(bant-kont(2:1)) +
                              function numval(bant-kont(3:1)) +
                              function numval(bant-kont(4:1)) +
                              function numval(bant-kont(5:1)) +
                              function numval(bant-kont(6:1)) 

       compute algo-sonuc = function numval(algo-ara-top(1:1)) +
                            function numval(algo-ara-top(2:1)) 
       if algo-sonuc > 9
          compute algo-sonuc = function numval(algo-sonuc(1:1)) +
                               function numval(algo-sonuc(2:1)) 
       end-if
       if algo-sonuc = function numval(bant-seri(7:1))
          move 0 to hatali-bant
       else 
          move 1 to hatali-bant
       end-if
       if fullbant-kont(8:1) <> spaces or 
          fullbant-kont(7:1) = spaces
          move 1 to hatali-bant
       end-if

      .
*
 bant-kisi-kontrol.
     initialize kolbant-rec kisi-top
     compute kisi-top = rez-buyuk + rez-kucuk + rez-free     
 
     move 1 to aktif-bant-say
     move rez-no to kolbant-rez-no
     start kolbant key not < kolbant-anah invalid
           continue
     not invalid
     perform with test after until fs-kolbant  = "10"
     read kolbant next no lock end move "10" to fs-kolbant 
     not at end 

         if rez-no <> kolbant-rez-no
            exit perform
         end-if
         if kolbant-durumu = 1                                                 
            add 1 to aktif-bant-say
         end-if

     end-read
     end-perform 
     end-start

     if kisi-top < aktif-bant-say 
        move 1 to bant-fazla
     else
        move 0 to bant-fazla
     end-if
     .
*
 bant-mukerrer-kontrol.
     initialize kolbant-rec bant-bos c-out-bant-alindi
     move mis-kol-bandi to kolbant-seri-no
     start kolbant key not < kolbant-anah1 invalid
           continue
     not invalid
     perform with test after until fs-kolbant = "10" 
     read kolbant next no lock end move "10" to fs-kolbant
     not at end
         if mis-kol-bandi = kolbant-seri-no
            move 0 to bant-bos
            if kolbant-rez-no = rez-no    
               display message box "Kolbandi daha once bu rezervasyonda baglanmis." new-line
                                   "Profillerde degisim olabilir kontrol ediniz.." 
                             title "Uyari"
               move 1 to bant-bos
            else 
               if kolbant-durumu <> 4 
                  display message box "Kolbandi daha once farkli rezervasyona baglanmis." new-line
                                      "Islem iptal edilmistir!!.."
               else
                  initialize kolbant-mus-anah
                  rewrite kolbant-rec invalid
                          stop " "
                  end-rewrite 
                  move 1 to c-out-bant-alindi
                  move 1 to bant-bos
               end-if
            end-if   
         else
            move 1 to bant-bos
         end-if
         exit perform
     end-read
     end-perform 
     end-start
     .
*
 mukerrer-kontrol.
     initialize kolbant-rec bant-bos 
     move all low-values to kolbant-rez-no
     move yeni-bant-seri to kolbant-seri-no
     start kolbant key not < kolbant-anah1 invalid
           continue
     not invalid
     perform with test after until fs-kolbant = "10" 
     read kolbant next no lock end move "10" to fs-kolbant
     not at end
         if yeni-bant-seri = kolbant-seri-no
            move 0 to bant-bos
            if kolbant-rez-no = yedek-rez    
               display message box "Kolbandi daha once bu rezervasyonda baglanmis." new-line
                                   "Yalnizca durumunu degistirmeniz mumkun." new-line
                                   "Islem iptal edilmistir!!.."
                             title "Uyari"
            else 
               display message box "Kolbandi daha once farkli rezervasyona baglanmis." new-line
                                   "Islem iptal edilmistir!!.."
            end-if   
         else
            move 1 to bant-bos
         end-if
         exit perform
     end-read
     end-perform 
     end-start
     .

*
 acuserve-bant-adres-aktar.
    open input bantstok
    initialize bantstok-rec
    move 1 to bantstok-anah-kodu
    read bantstok no lock invalid 
         close bantstok
         exit paragraph  
    end-read 
    close bantstok

    move bantstok-sirket to stokhrk-dosya-adres 
                            sgenel-dosya-adres stok-dosya-adres        
    move bantstok-ip     to ip-no                      
                
    move all low-values to stokhrk-acuserve-dosya   
    sgenel-acuserve-dosya stok-acuserve-dosya                           
                           ip-no.

    inspect bantstok-ip 
            replacing trailing spaces by low-values.

    if bantstok-ip <> low-values
       move all low-values to ip-no
       string ip-no,
              "@" delimited by low-values
              bantstok-ip delimited by low-values
              ":" delimited by low-values
              into ip-no
    end-if

    string stokhrk-acuserve-dosya,
           ip-no                        delimited by low-values
           stokhrk-dosya                delimited by low-values
           into stokhrk-acuserve-dosya.

    string stok-acuserve-dosya,
           ip-no                        delimited by low-values
           stok-dosya                delimited by low-values
           into stok-acuserve-dosya.
 
    string sgenel-acuserve-dosya,
           ip-no                        delimited by low-values
           sgenel-dosya                delimited by low-values
           into sgenel-acuserve-dosya.
    
    inspect stokhrk-acuserve-dosya replacing all spaces by low-values  
    inspect stok-acuserve-dosya replacing all spaces by low-values
    inspect sgenel-acuserve-dosya replacing all spaces by low-values.
*
 stok-seri-kontrol.
     open input sgenel
     initialize sgenel-rec 
     move 1 to sgenel-anahtar
     read sgenel no lock invalid 
          continue 
     end-read 
     close sgenel

     open input stokhrk stok
     initialize stok-rec  kolbant-seri-buldum
     move "KOLBANDI"        to STK-BARKOD(1:8)
     start stok key not < STK-BARKOD invalid 
          continue 
     not invalid 
     perform until fs-stok = "10"
     read stok next no lock end move "10" to fs-stok
     not at end
          if stk-barkod(1:8) <> "KOLBANDI"
              exit perform
          end-if 
            if kolbant-seri-buldum = 0
               perform stokhrk-oku
            end-if 
     end-read 
     end-perform
     end-start
     close stok stokhrk.
*
 stokhrk-oku.
     initialize stokhrk-rec  
     move "20180901"   to stokhrk-tarih
     move stk-kodu     to stokhrk-kodu
     start stokhrk key not < stokhrk-alt-anahtar invalid 
         continue 
     not invalid 
     perform until fs-stokhrk = "10"
     read stokhrk next no lock end move "10" to fs-stokhrk
     not at end 
            if stokhrk-kodu <> stk-kodu
                exit perform 
            end-if 
            if stokhrk-tarih > tarih-tasi
                exit perform 
            end-if 
            if stokhrk-tipi <> "CB"
               exit perform cycle 
            end-if 
            if stokhrk-ambar <> bantstok-ambar
               exit perform cycle 
            end-if 
            if stokhrk-depart <> bantstok-departman 
                exit perform cycle 
            end-if
            
            if function numval(stokhrk-parti-no) > 0
              if function numval(bant-kont) <= 
                 function numval(stokhrk-parti-no)
                    move 1 to kolbant-seri-buldum
                    exit perform 
              end-if 
            end-if 
     end-read 
     end-perform
     end-start.
    
*
 musteri-kolbandi-kontrol.
     initialize prohrk13-rec profil-kolbandi-var
     move yedek-prof        to prohrk13-profil-anah
     move isyeri-adres-tasi to prohrk13-rez-sirket
     start prohrk13 key not < prohrk13-anah invalid
           continue
     not invalid
     perform with test after until fs-prohrk13 = "10"
     read prohrk13 next no lock end move "10" to fs-prohrk13 
     not at end
         if yedek-prof <> prohrk13-profil-anah
            exit perform 
         end-if

         if isyeri-adres-tasi <> prohrk13-rez-sirket
            exit perform cycle
         end-if

         initialize rez-rec 
         move prohrk13-rez-no to rez-no
         read rez no lock invalid
              exit perform cycle
         not invalid
             if tarih-tasi > rez-cik-tar or 
                tarih-tasi < rez-gir-tar
                exit perform cycle
             else 
                initialize kolbant-rec 
                move rez-no to kolbant-rez-no 
                start kolbant key not < kolbant-anah invalid
                      continue
                not invalid
                perform with test after until fs-kolbant = "10" 
                read kolbant next no lock end move "10" to fs-kolbant
                not at end 
                    if rez-no <> kolbant-rez-no
                       exit perform 
                    end-if
                    if kolbant-mus-anah = prohrk13-profil-anah 
                       if kolbant-durumu = 1 
                          display message box "Profile bagli aktif vaya c-out kolbandi mevcut." new-line
                                              "Kolbandi tanimlamasi iptal edilmistir.. " 
                          move 1 to profil-kolbandi-var
                          exit perform
                        end-if
                        if kolbant-durumu = 4
                           initialize kolbant-mus-anah
                           rewrite kolbant-rec invalid
                                   stop " "
                           end-rewrite
                           initialize musteri-rec 
                           move kolbant-mus-anah to m-profil  
                           read musteri no lock invalid
                                continue
                           not invalid
                               initialize musteri-kol-bandi
                               rewrite musteri-rec invalid
                                       stop " "
                               end-rewrite
                           end-read
                           move 1 to tmp-uzatma
                        end-if
                    end-if
                end-read
                end-perform 
                end-start
             end-if
         end-read
     end-read
     end-perform 
     end-start.

