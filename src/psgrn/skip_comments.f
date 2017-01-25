      subroutine skip_comments(unit)

      implicit none
      integer unit, iostat
      character line*(1)

666   continue

      read (unit, '(a)', iostat=iostat) line
      if (iostat .ne. 0) then
          stop 'error occured during read'
      end if

      if (line(1:1) .ne. '#') then
          backspace (unit)
          goto 777
      end if 

      goto 666

777   continue
      return
      end
