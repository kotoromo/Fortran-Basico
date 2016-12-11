! Las variables de tipo complex son aquellas que almacenan numeros complejos.
! Un numero complejo está compuesto por una parte real y otra imaginaria.
! Dos unidades numericas consecutivas almacenan estas dos partes.

!Por ejemplo, el número representado por (1.0, -1.0) es igual a 1.0 - 1.0i
!La función generica cmplx() crea un número complejo. Produce un resultado que
!cuyas partes imaginarias y reales son de precisión simple.

! Las versiones  más modernas de Fortran (90/95) nos permiten tener mayor control sobre la precisión de
! datos de tipo real e integer mediante el especificador kind.

!En la programación científica, uno usualmente necesita saber el rango y precisión de los datos
!del hardware en el que se está trabajando.

!La función intrinseca kind() nos permite consultar los detalles de la representación de datos del hardware
!en el que se está trabajando.

program tipos_compl
real :: a
real :: b
complex :: z
complex, parameter :: z2 = (2.0, 3.1)

complex(kind=4) :: z_4bytes
complex(kind=8) :: z_8bytes
complex(kind=16) :: z_16bytes

z = cmplx(a, b)
print *, z

print *, z2

print *, "¿Cuántos bytes puede almacenar una variable de tipo complex por defecto?: ", kind(z)

print *, "¿Cuántos bytes almacena z_4bytes?: ", kind(z_4bytes)

print *, "¿Cuántos bytes almacena z_8bytes?: ", kind(z_8bytes)

print *, "¿Cuántos bytes almacena z_16bytes?: ", kind(z_16bytes)

end program tipos_compl
