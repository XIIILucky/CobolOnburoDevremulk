*
 identification division.
 program-id.    yardim is initial program.
 environment division.
 data division.
 working-storage section.
 copy "acucobol.def".
 copy "acugui.def".
 copy "winhelp.def".
 copy "crtvars.def".
 78 help-file value "\acucorp\acucbl610\acugt\bin\asyahelp.chm".
 linkage section.
 01 LINK-EVENT-DATA.
    03  LINK-EVENT-TYPE                      PIC X(4) COMP-X.
    03  LINK-EVENT-WINDOW-HANDLE             HANDLE OF WINDOW.
    03  LINK-EVENT-CONTROL-HANDLE            HANDLE.
    03  LINK-EVENT-CONTROL-ID                PIC XX COMP-X.
    03  LINK-EVENT-DATA-1                    SIGNED-SHORT.
    03  LINK-EVENT-DATA-2                    SIGNED-LONG.
    03  LINK-EVENT-ACTION                    PIC X COMP-X.
 procedure division using LINK-EVENT-DATA.
 main.
    call "$winhelp" using help-file
                          help-context
                          link-event-data-2.
    
    goback.
