frame-ac.
    move 100 to frame-adet.
    display floating graphical 
            window
            line  frame-win-line 
            pos   frame-win-pos 
            lines 4
            size  25
            title-bar
            title  frame-title
            handle frame-sakla

*/ frame
    display frame line 2 col 1 size 30 lines 1.50
            fill-color   = 04
            fill-color2  = 16
            fill-percent =  0
            title = frame-frame-title
            handle in frame-handle
            title-position = 7

    if frame-kayit-sayi < frame-adet
       compute frame-ciz = frame-adet / frame-kayit-sayi
       move 1 to frame-kayitta
    else
       compute frame-kayitta = frame-kayit-sayi / frame-adet
       move 1 to frame-ciz
    end-if.

    move 1 to frame-yuzde-pos.
*
 frame-goster.
    add 1 to frame-sayac.
    if frame-sayac = frame-kayitta and frame-adet not = zeroes
       move zeroes to frame-sayac
       move frame-yuzde-pos to eframe-yuzde-pos
       modify control 9,
              line 2 col 1 size 30 lines 1.50
              property 3 = 4
              property 4 = frame-yuzde-pos
              property 5 = 16
              property 6 = 7
              title = frame-frame-title 
      
********************display ile yavas opluyor*********************
*       display frame line 2 col 1 size 30 lines 1.50
*               fill-color  = 4
*               fill-color2 = 16 
*               title = frame-frame-title
*               fill-percent = frame-yuzde-pos
*               title-position = 7
*               handle frame-handle
******************************************************************
*
       add frame-ciz to frame-yuzde-pos
       subtract frame-ciz from frame-adet
    end-if.    
 
*    
 frame-kapat.
    close window frame-sakla. 
