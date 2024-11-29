program-id. pure-cobol is initial program.
environment division.
input-output section.
file-control.
     select oku assign to random
            oku-dosya,
     organization line sequential.

     select yaz assign to output
            yaz-dosya
     organization line sequential.
data division.
file section.
fd oku.
01 oku-rec       pic x(1000).
fd yaz.
01 yaz-rec       pic x(1000).
working-storage section.
01 oku-dosya     pic x(200).|| value "/tmp/dokumer".
01 yaz-dosya     pic x(200).|| value "/tmp/a.html".  
01 ardpdf.
   02 filler pic x(25) value "wkhtmltopdf".
   02 html    pic x(50).
   02 pdf     pic x(50).
01 deg.
   02 2hane         pic xx.
   02 i             pic 9(10).
   02 ii            pic 9(10).
   02 baslik-i      pic 9.
   02 x200          pic x(200).
   02 bld          pic x.
   02 baslik.
      03 basliklar  pic x(200) occurs 9 times.
 78 max-dokumer-kolon VALUE IS 99. 

 01 altcizgimi pic x(40).
    88 altcizgi value ' style="border-bottom: 2px solid #000;"'.

 01 prosif-detaylar      pic x(100) value "111111111111111111111111111111111111111111111111111".
 01 yazfor-degiskenler.
     02 yazfor-i         PIC  9(10).
     02 yazfor-ii        PIC  9(10).
     02 yazfor-iii       PIC  9(10).
     02 yazfor-entry-baslik-sayi     PIC  9.
     02 yazfor-entry-basliklar-occ.
         03 yazfor-entry-baslik-occ-x.
             04 yazfor-entry-baslik-occ      PIC  x(300)
                  OCCURS 7 TIMES.
             04 yazfor-entry-baslik-kere     PIC  9
                  OCCURS 7 TIMES.
             04 yazfor-detay-baslik-occ      PIC  x(300)
                  OCCURS 7 TIMES.
             04 yazfor-detay-baslik-kere     PIC  9
                  OCCURS 7 TIMES.
             04 yazfor-detay-baslik-basma    PIC  x
                  OCCURS 7 TIMES.
     02 yazfor-detay-baslik-sayi     PIC  9.
     02 yazfor-detaylar.
         03 yazfor-detaylar-occ
              OCCURS MAX-DOKUMER-KOLON TIMES.
             04 yazfor-bp        PIC  9(4).
             04 yazfor-au        PIC  9(4).
             04 yazfor-align     PIC  x.
             04 yazfor-detay-adi PIC  x(30).
     02 yazfor-kisit-detaylar.
         03 yazfor-kisit-detaylar-occ
              OCCURS MAX-DOKUMER-KOLON TIMES.
             04 yazfor-kisit-index           PIC  9(3).
     02 yazfor-detay-sayi            PIC  9(3).
     02 yazfor-kisit-detay-sayi      PIC  9(3).
     02 yazfor-son-yer   PIC  9(4).
     02 yazfor-kayit-sayi            PIC  9(10).
     02 yazfor-sayfa     PIC  9(04).
     02 yazfor-1         PIC  9.
     02 yazfor-kere      PIC  9.
     02 yazfor-after-i   PIC  9(2).
 LINKAGE                     SECTION.
*{Bench}linkage
*{Bench}end
  01 pdf-link-tum.
     02 pdf-dokumer-adres         pic x(200).   

procedure division using pdf-link-tum.
main.
    || oku-yazdan gelen bilgiye göre yaz-dosya ayarla ve pdf wrk ayarla
    if pdf-dokumer-adres not = spaces 
       move pdf-dokumer-adres to oku-dosya
       string  
             oku-dosya delimited by "    "
             ".html"
       into yaz-dosya
               inspect yaz-dosya replacing trailing spaces by low-values 
    end-if 
    perform okuyaz.
    perform ard2pdf.
    goback.

okuyaz.
    initialize deg.
    open input oku.
    open output yaz.
    perform html-header.
    perform until 1 = 0
    initialize oku-rec
    read oku next no lock end exit perform 
    not at end
          inspect oku-rec replacing all high-values by spaces
          initialize bld
          evaluate oku-rec(1:1)
          when "W"
          when "?"
          when "O"
               exit perform cycle
          when "B"
               add 1                     to baslik-i
               move oku-rec(22:)         to basliklar(baslik-i)
               inspect basliklar(baslik-i) replacing trailing spaces by low-values 
               perform baslik-islem
               exit perform cycle
          when "D"
               move "E"	                 to bld
                   evaluate oku-rec(2:1)
                       when 1 
                            initialize yaz-rec move "<table>" to yaz-rec write yaz-rec

                            perform yazfor-detay-al
                            initialize i ii yazfor-i yazfor-ii yazfor-kisit-detaylar
                                   yazfor-kisit-detay-sayi
                            perform varying i from 1 by 1 until i > yazfor-detay-sayi
                                   if prosif-detaylar(i:1) = "1" or i > 50 
                                      add 1           to yazfor-kisit-detay-sayi
                                      move i          to yazfor-kisit-index(yazfor-kisit-detay-sayi)
                                   end-if
                            end-perform
                            perform yazfor-kayit-yerlestir
                            inspect oku-rec replacing all "|" by space
                            move yaz-rec      to yazfor-detay-baslik-occ(1)
                            move yazfor-kere  to yazfor-detay-baslik-kere(1)
                            move 1            to yazfor-detay-baslik-sayi
                       when other
                            perform yazfor-kayit-yerlestir
                            add 1                to yazfor-detay-baslik-sayi
                  end-evaluate
          when other
                  perform yazfor-kayit-yerlestir
                  write yaz-rec
                  add 1 to yazfor-kayit-sayi

          end-evaluate
    end-read
    end-perform.
    perform html-footer.
    close oku yaz.

ard2pdf.  
    move yaz-dosya             to html
    string 
            "/asya/ytl/bis/asya2web/files/" delimited by "    "
            yaz-dosya(17:4) delimited by "    "
            ".pdf" delimited by size     
    into pdf
    inspect html replacing all low-values by spaces
    inspect pdf replacing all low-values by spaces

**   move "/tmp/a.pdf"          to pdf.
|| pdf dosyasýnýn çýktý adresi
    call "c$system" using ardpdf.

baslik-islem.
    move all low-values to yaz-rec
    move basliklar(baslik-i)               to x200.
    perform baslik-yaz.

baslik-yaz.
    string '<h2 align="center" style="color:DodgerBlue;">' delimited by low-values
           x200 delimited by low-values
           "</h2>"  delimited by low-values
    into yaz-rec
    inspect yaz-rec replacing all low-values by spaces.
    write yaz-rec.

 yazfor-detay-al.
     initialize i ii yazfor-i.
     inspect oku-rec tallying yazfor-detay-sayi
             for all "|"
     perform varying i from function length(oku-rec) by -1 until i = 21
             if oku-rec(i:1) = "|"
                move i to yazfor-son-yer
                exit perform
             end-if
     end-perform.
     move 0  to yazfor-ii
     move 1  to yazfor-i
     move 22 to yazfor-bp(yazfor-i)
     perform varying i from 22 by 1 until i > yazfor-son-yer
             if oku-rec(i:1) = "|"
                move ii to yazfor-au(yazfor-i)
                add  1  to yazfor-au(yazfor-i)
                move 0  to ii
                add  1  to yazfor-i
                move 0  to yazfor-ii
             else
                add 1   to ii yazfor-ii
                if yazfor-ii = 1
                   move i     to yazfor-bp(yazfor-i)
                end-if
             end-if
     end-perform.

     

 yazfor-kayit-yerlestir.
* <tr>
*   <td>Alfreds Futterkiste</td>
*   <td>Maria Anders</td>
*   <td>Germany</td>
* </tr>

     inspect oku-rec replacing all low-values by spaces
     inspect oku-rec replacing all "|" by space
     move "<tr>"	 to yaz-rec write yaz-rec

     initialize yaz-rec yazfor-i yazfor-ii yazfor-iii.
     move 1 to yazfor-iii

     if oku-rec(5:1) = "-" 
        set altcizgi to true
     else
        move all low-values to altcizgimi
     end-if

     if oku-rec(3:1) = "A"
        move "E"	 to bld
     end-if

     if bld = "E"
        move "th"	 to 2hane
     else
        move "td"	 to 2hane
     end-if


     perform varying yazfor-i from 1 by 1 until yazfor-i > yazfor-kisit-detay-sayi
             move yazfor-kisit-index(yazfor-i)   to yazfor-ii
             inspect oku-rec(yazfor-bp(yazfor-ii):yazfor-au(yazfor-ii)) replacing trailing spaces by low-values
             inspect oku-rec replacing all "-" by spaces

             move all low-values to yaz-rec
             string "<" delimited by low-values
                    2hane delimited by low-values
                    altcizgimi delimited by low-values
                    ">" delimited by low-values
                    oku-rec(yazfor-bp(yazfor-ii):yazfor-au(yazfor-ii)) delimited by low-values
                    "</" delimited by low-values
                    2hane delimited by low-values
                    ">" delimited by low-values
             into yaz-rec
             add yazfor-au(yazfor-ii)            to yazfor-iii
             inspect yaz-rec replacing all low-values by spaces
             write yaz-rec
     end-perform.

     move "</tr>"	 to yaz-rec write yaz-rec.

 html-header.
     initialize yaz-rec move "<!DOCTYPE html>" to yaz-rec write yaz-rec
     initialize yaz-rec move "<html>" to yaz-rec write yaz-rec
     initialize yaz-rec move "<head>" to yaz-rec write yaz-rec
     initialize yaz-rec move "<style>" to yaz-rec write yaz-rec
     initialize yaz-rec move "table {" to yaz-rec write yaz-rec
     initialize yaz-rec move "font-family: arial, sans-serif;" to yaz-rec write yaz-rec
     initialize yaz-rec move "border-collapse: collapse;" to yaz-rec write yaz-rec
     initialize yaz-rec move "width: 100%;" to yaz-rec write yaz-rec
     initialize yaz-rec move "font-size: 50%;" to yaz-rec write yaz-rec
     initialize yaz-rec move "}" to yaz-rec write yaz-rec
     initialize yaz-rec move "" to yaz-rec write yaz-rec
     initialize yaz-rec move "td, th {" to yaz-rec write yaz-rec
     initialize yaz-rec move "border: 1px solid #dddddd;" to yaz-rec write yaz-rec
     initialize yaz-rec move "text-align: left;" to yaz-rec write yaz-rec
     initialize yaz-rec move "padding: 5px;" to yaz-rec write yaz-rec
     initialize yaz-rec move "}" to yaz-rec write yaz-rec
     initialize yaz-rec move "" to yaz-rec write yaz-rec
     initialize yaz-rec move "tr:nth-child(even) {" to yaz-rec write yaz-rec
     initialize yaz-rec move "background-color: #dddddd;" to yaz-rec write yaz-rec
     initialize yaz-rec move "}" to yaz-rec write yaz-rec
     initialize yaz-rec move "</style>" to yaz-rec write yaz-rec
     initialize yaz-rec move "</head>" to yaz-rec write yaz-rec
     initialize yaz-rec move "<body>" to yaz-rec write yaz-rec.
 html-footer.
     initialize yaz-rec move "</tr>" to yaz-rec write yaz-rec.
     initialize yaz-rec move "</table>" to yaz-rec write yaz-rec.
     initialize yaz-rec move "" to yaz-rec write yaz-rec.
     initialize yaz-rec move "</body>" to yaz-rec write yaz-rec.
     initialize yaz-rec move "</html>" to yaz-rec write yaz-rec.
