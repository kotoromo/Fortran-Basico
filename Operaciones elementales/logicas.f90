program logicas
! Operadores disponibles:
! .and.
! .or.
! .not.
! .eqv.
! .neqv.

logical, parameter :: q = .true.
logical, parameter :: p = .false.

print *, "q:", q, "p:", p

print *, "q AND p:", q .and. p
print *, "q OR p:", q .or. p
print *, "NOT p:", .not. p
print *, "q EQV p:", q .eqv. p
print *, "q NEQV p:", q .neqv. p


end program logicas