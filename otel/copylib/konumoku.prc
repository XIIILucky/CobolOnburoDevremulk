*
*/
     open input konum
     initialize konum-rec
     start konum key > konum-anahtar 
         invalid 
           continue
         not invalid
           perform until fs-konum  = "10"
             read konum next no lock 
                 end move "10" to fs-konum
                 not end 
                  if hangi-ref-secildi > 0
                     if konum-ref not = hangi-ref-secildi
                        exit perform cycle 
                     end-if 
                     move konum-adi to xkonum-adi(konum-anahtar)
                     move konum-ref to xkonum-ref(konum-anahtar)
                     if konum-adi not = spaces 
                        move  konum-anahtar to max-konum
                     end-if
                  else
                     move konum-adi to xkonum-adi(konum-anahtar)
                     move konum-ref to xkonum-ref(konum-anahtar)
                     move KONUM-TUTAR-SIRA to xkonum-TUTAR-SIRA(konum-anahtar)
                     if konum-adi not = spaces 
                        move  konum-anahtar to max-konum
                     end-if
                  end-if 
             end-read
           end-perform 
      end-start
      close konum .
      
*      move "KAMELYA" to ref-adi(1)       
*      move "SELIN  " to ref-adi(2)
*      move "FULYA  " to ref-adi(3)
*      move "SELIN TH"   to ref-adi(4).
*      move "SELIN BH"   to ref-adi(5).
      move 5 to max-ref.
