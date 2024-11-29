*
 dev-ref-kontrol.
     initialize dev-ref-gecmez
     if dev-ref-tarih > "20160301" and dev-ref = 1
         move 1 to dev-ref-gecmez
     end-if
     if dev-ref-tarih < "20160301" and dev-ref = 2
         move 1 to dev-ref-gecmez
     end-if
     if dev-ref > 2 
         move 1 to dev-ref-gecmez
     end-if.
