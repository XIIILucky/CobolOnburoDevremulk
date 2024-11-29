*
 declaratives.
 file-error section.
      use after standard error procedure on
      formyaz text-oku dzn sayf fatura
      konuk fatdetay ara.
 file-error-status.
      if fs-dzn = "22"
         initialize fs-dzn
      else
         perform fileerr-proc
      end-if
      .
 file-exit.
 end declaratives.
*
