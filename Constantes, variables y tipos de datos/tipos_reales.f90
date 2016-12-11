! Las variables de tipo real son aquellas que almacenan numeros de punto flotante, como 0.2, 1222.22222, -123.45
! Anteriormente sólo habían dos tipos de números reales: el tipo por defecto y el tipo de doble precisión

! Las versiones  más modernas de Fortran (90/95) nos permiten tener mayor control sobre la precisión de
! datos de tipo real e integer mediante el especificador kind.

program tipos_reales
! Declaración de variables
real :: var_real
real(kind=4) :: real_4bytes
real(kind=8) :: real_8bytes
real(kind=16) :: real_16bytes

integer :: int
integer(kind=2) :: int_2bytes
integer(kind=4) :: int_4bytes
integer(kind=8) :: int_8bytes
integer(kind=16) :: int_16bytes

var_real = 12.5

!En la programación científica, uno usualmente necesita saber el rango y precisión de los datos
!del hardware en el que se está trabajando.

!La función intrinseca kind() nos permite consultar los detalles de la representación de datos del hardware
!en el que se está trabajando.

print *, "¿Cuántos bytes puede almacenar una variable de tipo real por defecto?: ", kind(var_real)
print *, "Hasta qué número positivo llega?: ", huge(var_real)

print *, "¿Cuántos bytes almacena real_4bytes?: ", kind(real_4bytes)
print *, "Hasta qué número positivo llega?: ", huge(real_4bytes)

print *, "¿Cuántos bytes almacena real_8bytes?: ", kind(real_8bytes)
print *, "Hasta qué número positivo llega?: ", huge(real_8bytes)

print *, "¿Cuántos bytes almacena real_16bytes?: ", kind(real_16bytes)
print *, "Hasta qué número positivo llega?: ", huge(real_16bytes)



print *, "¿Cuántos bytes almacena int?: ", kind(int)
print *, "Hasta qué número positivo llega?: ", huge(int)

print *, "¿Cuántos bytes almacena int_2bytes?: ", kind(int_2bytes)
print *, "Hasta qué número positivo llega?: ", huge(int_2bytes)

print *, "¿Cuántos bytes almacena int_4bytes?: ", kind(int_4bytes)
print *, "Hasta qué número positivo llega?: ", huge(int_4bytes)

print *, "¿Cuántos bytes almacena int_8bytes?: ", kind(int_8bytes)
print *, "Hasta qué número positivo llega?: ", huge(int_8bytes)

print *, "¿Cuántos bytes almacena int_16bytes?: ", kind(int_16bytes)
print *, "Hasta qué número positivo llega?: ", huge(int_16bytes)
!El tipo real cumple con todas las operaciones posibles en el conjunto de los números reales.


end program tipos_reales

