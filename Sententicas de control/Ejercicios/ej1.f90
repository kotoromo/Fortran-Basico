program ej1

  !Programa que determina el tipo de triángulo dados sus catetos.

  integer a, b, c

  print *, "Porfavor escribe los 3 lados que describen tu triángulo:"
  read(*,*) a, b, c !Leemos de la entrada estándar el valor de los tres enteros.

  if (a*b + b*c .eq. a*c) then
    print *, "No existe triángulo que determine A, B y C."

    return
  end if

  if ((a .eq. b) .and. (a .eq. c) .and. (b .eq. c)) then
    print *, "Es un triángulo equilatero."

  end if

  if (((a .eq. b) .and. (a .ne. c)) .or. &
  ((a .eq. c) .and. (a .ne. b)) .or. &
  ((b .eq. c) .and. (c .ne. a))) then
    print *, "Es un triángulo isóceles."

  end if

  if ((a.ne.b) .and. (b.ne.c) .and. (a.ne.c)) then
    print *, "Es un triángulo escaleno."

  end if

end program ej1
