*
 grapher-calisma-onlemi.
     go grapher-exit
     .
*
 grapher-init.
     if grapher-ptr not = NULL
        call "M$FREE" using grapher-ptr, end-call
     end-if
     initialize grapher-seri-kaydi
                garpher-sayac
                grapher-pointer
     compute grapher-data-boyu = function length (grapher-seri)
     .
*
 grapher-yeni-seri.
     if grapher-seri-bas > grapher-seri-son
        if grapher-seri-son = zero
           move grapher-seri-bas to grapher-seri-son
        else
           move grapher-seri-son to grapher-i
           move grapher-seri-bas to grapher-seri-son
           move grapher-i        to grapher-seri-bas
        end-if
     end-if
     compute grapher-ekle-sayisi = (grapher-seri-son - grapher-seri-bas)+ 1
     perform grapher-mem-ayir
     perform varying grapher-i from  grapher-seri-bas
                               by    1
                               until grapher-i > grapher-seri-son
       perform grapher-seri-ekle
     end-perform
     .
*
 grapher-seri-ekle.
     compute grapher-yeni-byte = (grapher-seri-sayisi + 1) * grapher-data-boyu
     if grapher-top-byte < grapher-yeni-byte
        move 1 to grapher-ekle-sayisi
        perform grapher-mem-ayir
     end-if
     add 1 to grapher-seri-sayisi
     move grapher-seri-sayisi to grapher-islem
     move grapher-i           to grapher-seri-bas
     perform grapher-seri-yaz
     .
*
 grapher-seri-yaz.
     compute grapher-byte-pos = ((grapher-islem - 1) * grapher-data-boyu) + 1
     call "M$PUT" using, grapher-ptr,
                         grapher-seri,
                         grapher-data-boyu,
                         grapher-byte-pos
     end-call
     .
*
 grapher-mem-ayir.
     compute grapher-eski-byte   = grapher-seri-sayisi * grapher-data-boyu
     compute grapher-yeni-byte   = grapher-ekle-sayisi * grapher-data-boyu
     compute grapher-top-byte    = grapher-eski-byte + grapher-yeni-byte
     if grapher-tmp-ptr not = NULL
        call "M$FREE" using grapher-tmp-ptr, end-call
     end-if
     call "M$ALLOC" using grapher-top-byte,
                          grapher-tmp-ptr,
     end-call
     if grapher-tmp-ptr not = NULL
        perform grapher-ptr2tmp
        perform grapher-tmp2ptr
        move grapher-top-byte to grapher-eski-byte
     end-if
     .
*
 grapher-ptr2tmp.
     if grapher-ptr     not = NULL and
        grapher-tmp-ptr not = NULL
        call "C$MEMCPY" using, grapher-tmp-ptr,
                               grapher-ptr,
                               grapher-eski-byte,
        end-call
     end-if
     .
*
 grapher-tmp2ptr.
     if grapher-tmp-ptr not = NULL
        if grapher-ptr not = NULL
           call "M$FREE" using grapher-ptr, end-call
        end-if
        move grapher-tmp-ptr to grapher-ptr
        set  grapher-tmp-ptr to NULL
     end-if
     .
*
 grapher-cagir.
     call "/asya/ytl/obj/otel/grapher.asy"
       using grapher-seri-sayisi, grapher-ptr
       on exception
          perform callerr-proc
          exit paragraph
       not on exception
          cancel "/asya/ytl/obj/otel/grapher.asy"
     end-call
     perform Grapher-Init
     .
*
 grapher-exit.
     exit
     .
* 