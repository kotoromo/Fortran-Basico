!Recordemos que fortran nos permite utilizar operadores de comparaciôn
program comparacion
!Los operadores de comparaciôn son los siguientes:
! == o .eq.
! /= o .ne.
! > o .gt.
! < o .lt.
! >= o .ge.
! <= o .le.

real a, b
complex z1, z2

a = 2
b = a

z1 = (1, 1)
z2 = z1
! Vamos a utilizar .eqv. que es para coparar valores lógicos. Esto sólo para demostrar que los operadores son lo mismo.
print *, "(a == b) .eqv. (a .eq. b):", (a == b) .eqv. (a .eq. b)
print *, "(a /= b) .eqv. (a .ne. b):", (a /= b) .eqv. (a .ne. b)
print *, "(a > b) .eqv. (a .gt. b):", (a > b) .eqv. (a .gt. b)
print *, "(a < b) .eqv. (a .lt. b):", (a < b) .eqv. (a .lt. b)
print *, "(a >= b) .eqv. (a .ge. b):", (a >= b) .eqv. (a .ge. b)
print *, "(a <= b) .eqv. (a .le. b):", (a <= b) .eqv. (a .le. b)

end program comparacion