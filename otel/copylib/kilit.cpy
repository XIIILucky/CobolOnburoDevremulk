*
 dosya-kilit-kontrol.  
*ISLKILIT CONTROL
     if genel-dosya-kilit-devrede not = 1
        exit paragraph
     end-if 
     if os-is-unix
        if islkilit-acik-kapali = "A"
           close islkilit
           delete file islkilit
           move space to islkilit-acik-kapali
        end-if
        move xrez-no          to link-islkilit-no
        perform islkilit-kontrol
        if link-islkilit-durum <> space
           move 1 to gec-gecme
           move 4 to accept-control
           move 4 to control-id
           exit paragraph
        end-if
     end-if.
*ISLKILIT CONTROL
*
 islkilit-kontrol.
     if genel-dosya-kilit-devrede not = 1
        exit paragraph
     end-if 

     initialize link-islkilit-durum
     call "/asya/ytl/obj/otel/islkilit.asy" using link-islkilit on exception
          perform callerr-proc
     end-call.

     if link-islkilit-durum = spaces
        if islkilit-acik-kapali = "A"
           close islkilit
           delete file islkilit
        end-if
        perform islkilit-yaz
     end-if.

*
 islkilit-yaz.
     if genel-dosya-kilit-devrede not = 1
        exit paragraph
     end-if 

     move link-islkilit-no           to islkilit-no.
     move isyeri-adres-tasi          to islkilit-isyeri
     open i-o islkilit allowing readers
     move "A"                        to islkilit-acik-kapali
     move 1                          to islkilit-anah
     read islkilit no lock invalid
          continue
     end-read.
     move terminal-name               to islkilit-terminal
     move client-machine-name         to islkilit-machine
     move user-id                     to islkilit-user
     move station-id                  to islkilit-station
     move k-kodu-tasi                 to islkilit-kllnc-kodu
     accept islkilit-son-tarih from century-date
     accept islkilit-son-zaman from time
     call "c$getpid" giving islkilit-process-id.
     write islkilit-rec invalid
           rewrite islkilit-rec end-rewrite
     end-write.

*
 kilit-aft-routine.
     if genel-dosya-kilit-devrede not = 1
        exit paragraph
     end-if 

     if islkilit-acik-kapali = "A"
        close islkilit
        delete file islkilit
     end-if.
