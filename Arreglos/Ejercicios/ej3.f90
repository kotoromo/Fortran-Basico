program preguntar_nombre
  implicit none

  integer, parameter :: MAXLEN = 250
  character(len=MAXLEN), dimension(:), allocatable, target :: lista_nom, aux_arr
  !character(len=MAXLEN), pointer :: lista_ptr(:)

  character :: c_input = ''
  character(len=MAXLEN) :: s_input = ""
  integer :: i_input = 0, i = 0, LIST_SIZE = 0

  allocate(lista_nom(1:4))

  lista_nom(1) = 'Nicky'
  lista_nom(2) = 'Jorge'
  lista_nom(3) = 'Luis'
  lista_nom(4) = 'Alejandra'

  LIST_SIZE = size(lista_nom)

  print *, "Crear nueva lista? (s/n)"
  read *, c_input

  if (c_input.eq.'s') then
      print*, "Okay, utilizando nueva lista :)"

      do i = 1, size(lista_nom)
        lista_nom(i) = ""
      end do

      deallocate(lista_nom)

      print*, "Cuántos elementos?"
      read*, i_input

      allocate(lista_nom(1:i_input))

      do i=1, i_input
        print *, "Ingrese el elemento ", i
        read*, lista_nom(i)
      end do

      print*, "Desea ingresar más datos? (s/n)"
      c_input = ''
      read*, c_input

      if (c_input.eq.'s') then
        print*, "Okay!, escribe porfavor 'fin' cuando hayas terminado"
        do while(.true.)
          LIST_SIZE = size(lista_nom) + 1
          allocate(aux_arr(LIST_SIZE))

          print*, "Escribe el elemento ", LIST_SIZE
          s_input = ""
          aux_arr = lista_nom
          deallocate(lista_nom)
          allocate(lista_nom(LIST_SIZE))
          lista_nom = aux_arr

          do i=1, size(aux_arr)
            lista_nom(i) = aux_arr(i)
          end do

          print*, "[DEBUG] lista_nom: ", lista_nom

          read*, s_input

          if (s_input.eq."fin") then
            exit
          else
            lista_nom(LIST_SIZE) = s_input
          end if

          deallocate(aux_arr)

        end do
      end if
    else
      print*, "Okay, utilizando lista predeterminada :)"
  end if

  print *, "Imprimiendo tu lista:"
  print*

  do i = 1, size(lista_nom)
    print*,lista_nom(i)

  end do

  deallocate(lista_nom)

end program preguntar_nombre
