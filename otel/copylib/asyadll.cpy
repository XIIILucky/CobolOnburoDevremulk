*
*typedef struct _currencyfmt {  
*    UINT      NumDigits; 
*    UINT      LeadingZero; 
*    UINT      Grouping; 
*    LPTSTR    lpDecimalSep; 
*    LPTSTR    lpThousandSep; 
*    UINT      NegativeOrder; 
*    UINT      PositiveOrder; 
*    LPTSTR    lpCurrencySymbol;
*} CURRENCYFMT; 

01 currencyfmt.
   02 currencyfmt-NumDigits                  pic x(2) comp-x.
   02 currencyfmt-LeadingZero                pic x(2) comp-x.
   02 currencyfmt-Grouping                   pic x(2) comp-x.
   02 currencyfmt-lpDecimalSep               pointer.
   02 currencyfmt-lpThousandSep              pointer.
   02 currencyfmt-NegativeOrder              pic x(2) comp-x.
   02 currencyfmt-PositiveOrder              pic x(2) comp-x.
   02 currencyfmt-lpCurrencySymbol           pointer.
*
 01 asyadll                                  PIC  x(50).
     88 asyadll-local                 VALUE IS "asyadll.dll". 
     88 asyadll-remote                VALUE IS "@[DISPLAY]:asyadll.dll". 
 01 ASYA-GetEnvVar                           PIC  x(50).
     88 ASYA-GetEnvVar-local          VALUE IS "ASYA_GetEnvVar". 
     88 ASYA-GetEnvVar-remote         VALUE IS "@[DISPLAY]:ASYA_GetEnvVar". 
******************************************************************************************
*-/Kullanimi
*  move all low-values to temp-path
*  call ASYA_GetEnvVar using by reference temp-path-var
*                      by reference temp-path
*                      by value function length(temp-path)
*-/Paremetreler
* 01 temp-path        PIC  x(256).
* 01 temp-path-var.
*     02 FILLER           PIC  x(4) VALUE IS "TEMP". -> "Ýstenilen çevresel deðiþken ne ise
*     02 FILLER           PIC  x VALUE IS x"00".
*
*-/Donus
*  temp-path içinde mevcut
******************************************************************************************

 01 ASYA-RunBartView                         PIC  x(50).
     88 ASYA-RunBartView-local        VALUE IS "ASYA_RunBartView". 
     88 ASYA-RunBartView-remote       VALUE IS "@[DISPLAY]:ASYA_RunBartView". 
 01 ASYA-GetCommandLine                      PIC  x(50).
     88 ASYA-GetCommandLine-local     VALUE IS "ASYA_GetCommandLine". 
     88 ASYA-GetCommandLine-remote    VALUE IS "@[DISPLAY]:ASYA_GetCommandLine".
 01 ASYA_GetCurrency                         PIC X(50).
     88 ASYA-GetCurrency-local        VALUE IS "ASYA_GetCurrency". 
     88 ASYA-GetCurrency-remote       VALUE IS "@[DISPLAY]:ASYA_GetCurrency".
******************************************************************************************
*-/Kullanimi
*  call ASYA-GetCommandLine using by reference parametre01
*-/Paremtreler
*  parametre01 -> pic x(512)
*-/Donus
*  parametre01'in basinda ve sonunda " isareti gelecek   örn: "c:\wrun32.exe trabuþke"
******************************************************************************************

