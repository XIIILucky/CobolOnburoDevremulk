*
 dil-ayarla-proc.
    if modul-turkce
       exit paragraph
    end-if.
*    modify window, visible = 1
    perform dil-ayarla-proc-1.
*    modify window, visible = 1.
 dil-ayarla-proc-1.
*/ Kullanim
*/-----------------------------------------
*/ set dil-goster   to     |
*/ perform dil-ayarla-proc |> satirlari ekran tekrar gösterildiðinde
*/ örnek : form daha önce gösterildi ama tekrar display form1 yapýldýðýnda
*/
*/
*/ sadece perform dil-ayarla-proc > form ilk defa gösterildiðinde
*/
*/-----------------------------------------
*/ ayný form 2 nciye gösterilliyor ise
    perform dil-ayarla-pencere-kontrol.
    if syshwnd-zaten-var = "E"
       if not dil-ekran-oku and 
          syshwnd-curr-window > 0
          perform dil-ekran-goster
          exit paragraph
       end-if
    end-if
    if syshwnd-zaten-var <> "E"
       initialize syshwnd-main dilayarla-pencereler
    end-if

    if syshwnd-curr-window = 0
       move dilayarla-pencere-no to syshwnd-curr-window
       move syshwnd-title        to dilayarla-pencereler-title(syshwnd-curr-window)
    end-if
               
    call "c$myfile" using syshwnd-program-name.
    perform dil-ayar-prog-cagir.
    perform dil-ekran-goster.
    
*
 dil-ayar-prog-cagir.
    initialize dilayarla-link-send
    call "m$alloc" using  function length(syshwnd-main), 
                          syshwnd-pointer.
    call "m$put" using syshwnd-pointer 
                       syshwnd-main.

*/kayit varmi kontrolu
    set dilayarla-link-send-goster                 to true
    move syshwnd-pointer                           to dilayarla-link-send-pointer
    move syshwnd-program-name                      to dilayarla-link-send-program
    inquire window, title in dilayarla-link-send-title
    move function when-compiled(1:14)              to dilayarla-link-send-compile
    call "/asya/ytl/obj/otel/dilayarla.asy" using dilayarla-link-send
    on exception
       perform callerr-proc
       exit paragraph
    end-call
    cancel "/asya/ytl/obj/otel/dilayarla.asy".
*/ eger form degismis yada yeni proýgramsa
    if not dilayarla-link-send-ok
       perform dil-ayarla-kontrol-bul
       call "m$put" using syshwnd-pointer 
                          syshwnd-main
       set dilayarla-link-send-duzenle               to true
       call "/asya/ytl/obj/otel/dilayarla.asy" using dilayarla-link-send
       on exception
          perform callerr-proc
          exit paragraph
       end-call
       cancel "/asya/ytl/obj/otel/dilayarla.asy"
    end-if.


    call "m$get" using syshwnd-pointer
                       syshwnd-main.

    call "m$free" using syshwnd-pointer.
    

*
 dil-ayarla-kontrol-bul.
    initialize syshwnd-controls-window(syshwnd-curr-window) 
               syshwnd-son-kontrol
    
    inquire window,
            lines in syshwnd-lines
            size in syshwnd-size
            title in syshwnd-title

    move 0 to syshwnd-i
    perform varying syshwnd-line
            from 1
            by 0.10
            until syshwnd-line > syshwnd-lines
            after syshwnd-col
            from 1
            by 0.10
            until syshwnd-col > syshwnd-size

            initialize syshwnd-class syshwnd-title
            inquire control
                    line syshwnd-line
                    col syshwnd-col
                    class in syshwnd-class
                    title in syshwnd-title

            if not syshwnd-classtir
               exit perform cycle
            end-if

            if syshwnd-entry-field or 
               syshwnd-scroll-bar or
               syshwnd-list-box or
               syshwnd-combo-box or
               syshwnd-bar or
               syshwnd-grid or
               syshwnd-bitmap or 
               syshwnd-tree-view or 
               syshwnd-web-browser or
               syshwnd-status-bar or 
               syshwnd-date-entry or
               syshwnd-active-x
                   exit perform cycle
            end-if


            add 1                         to syshwnd-i

            if syshwnd-i > max-syshwnd-control
               display message box 
                      "Max. ekran eleman sayisi ",max-syshwnd-control," olarak ayarlanmis"
                      x"0a0d",
                      "Incelenen eleman sayisi :",syshwnd-i,x"0a0d"
                      "Devam etmek icin enter'a basiniz !!!",x"0a0d0a0d"
                      "Lutfen uyariyi Ant-bim Bilgisayar Destek Hattina bildiriniz "
                      icon mb_warning_icon
                      title "Hata"
               exit perform
            end-if


            move syshwnd-class            to syshwnd-control-class(syshwnd-curr-window,syshwnd-i)
            move syshwnd-line             to syshwnd-control-line(syshwnd-curr-window,syshwnd-i)
            move syshwnd-col              to syshwnd-control-col(syshwnd-curr-window,syshwnd-i)
            move syshwnd-title            to syshwnd-control-title(syshwnd-curr-window,syshwnd-i)
            
    end-perform.
    move syshwnd-i                        to syshwnd-son-kontrol.
*
 dil-ekran-goster.
    if syshwnd-son-kontrol > max-syshwnd-control
       display message box 
              "Max. ekran eleman sayisi ",max-syshwnd-control," olarak ayarlanmis"
              x"0a0d",
              "Incelenen eleman sayisi :",syshwnd-son-kontrol,x"0a0d"
              "Devam etmek icin enter'a basiniz !!!",x"0a0d0a0d"
              "Lutfen uyariyi Ant-bim Bilgisayar Destek Hattina bildiriniz "
              icon mb_warning_icon
              title "Hata"
    end-if
    perform varying syshwnd-i
            from 1 
            by 1
            until (syshwnd-i > syshwnd-son-kontrol) or
                  (syshwnd-i > max-syshwnd-control)
            modify control,
                   line syshwnd-control-line(syshwnd-curr-window,syshwnd-i)
                   col syshwnd-control-col(syshwnd-curr-window,syshwnd-i)
                   title syshwnd-control-title-disp(syshwnd-curr-window,syshwnd-i)
    end-perform.

*
 dil-ayarla-pencere-kontrol.
    initialize syshwnd-title syshwnd-curr-window
    inquire window title in syshwnd-title
    if syshwnd-title = spaces
       move "Unknown Window Structure"   to syshwnd-title
    end-if
       
    perform varying dilayarla-pencere-no
            from 1
            by 1
            until dilayarla-pencere-no > max-syshwnd-window
                  if syshwnd-title = dilayarla-pencereler-title(dilayarla-pencere-no)
                     move dilayarla-pencere-no        to syshwnd-curr-window
                     exit paragraph
                  else
                     if dilayarla-pencereler-title(dilayarla-pencere-no) = spaces
                        exit perform
                     end-if
                  end-if
    end-perform.
    


