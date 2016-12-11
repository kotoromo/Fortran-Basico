!Una variable no es nada más que darle un nombre a un lugar de almacenamiento que nuestros
!programas puedan manipular. Cada variable debe de tener un tipo especifico, que determina
!el tamaño y el formato de la memoria de la variable; el rango de valores que puede almacenarse
!en esa memoria; y el conjunto de operaciones que se le pueden aplicar a la variable.

!La variable puede estar compuesta de letras, digitos, y el guión bajo. Además, debe
!cumplir con las siguientes caracteristicas:
!	*No más largo que 31 caracteres.
!	*Conformado de caracteres alfanuméricos (A-Z, a-z, 0-9) y guiones bajos (_)
!	*Primer caracter del nombre debe ser una letra.
!	*Los nombres no son sensibles a mayúsculas y minúsculas

!La sintaxis para declarar variables es muy simple y ya la hemos utilizado anteriormente:

program decl_var

implicit none

!Sintaxis: <tipo>, <parametros> :: nombre

real :: var_real
integer :: var_int
complex :: var_cplx
logical :: var_log
character :: var_char
character(len=80) :: mnsj

!Luego se pueden asignar:
var_real = 3.141517
var_int = 6
var_cplx = (1, 1) !Equivalente a (1 + i)
var_cplx = cmplx(2, -4) !Equivalente a (2 - 4i)
var_log = .true.
var_char = 'a'
mnsj = "Bienvenidos al curso de Fortran de PROTECO!"

print *, var_real
print *, var_int
print *, var_cplx
print *, var_log
print *, var_char
print *, mnsj


end program decl_var