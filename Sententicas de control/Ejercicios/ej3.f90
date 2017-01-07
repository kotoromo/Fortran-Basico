program ej3
  implicit none


  !Programa que calcula sin(x) utilizando la serie de McLaurin

  real x, res
  integer n, precision, aux
  integer factorial
  res = 0

  print *, "Introduzca un valor real de x"
  read *, x

  print *, "Introduzca un valor real de la precisión a alcanzar (lim de la suma)"
  read *, precision

  do n = 0, precision
    res = real((x**n))/real(factorial(n)) + res
  end do

  print *, "e^(",x,") = ", res


end program ej3

integer function factorial(n)
  implicit none
  integer, intent(in) :: n
  integer(kind=16) i, ans

  ans = 1
  do i = 1, n
    ans = ans *i
  end do
  factorial = ans

end function factorial
