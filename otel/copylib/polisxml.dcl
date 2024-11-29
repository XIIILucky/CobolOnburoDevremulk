        declaratives.
         file-error section.
             use after standard error procedure on
             genel genelfis polisxml konuk dokumer 
             hsonuc rez ozluk yanrez.
         file-error-status.
           if fs-polisxml = "39"
            call "/asya/ytl/obj/otel/polxmltr.asy"
                on exception 
                   perform callerr-proc
                not on exception
            cancel "/asya/ytl/obj/otel/polxmltr.asy"
            end-call
            perform destroy-window-proc
            goback
           end-if.
             perform fileerr-proc.
         file-exit.
         end declaratives.

