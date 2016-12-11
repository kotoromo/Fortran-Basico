program variables
!Esto es un comentario de linea.

! Para declarar una variable se usa la sig. sintaxis: <tipo> [,<atributo(s)>] [::] <variable(s)> [=<valor>]
! Los atributos posibles son:
! parameter, save, intent, pointer, target, allocatable, dimension,
! public, private, external, intrinsic, optional.
real a
real :: b,c,d !Especificación de varias variables.
integer :: a_int = 0

!Cuando se utiliza el atributo parameter se declara una variable constante
integer, parameter :: maxint=1000 ! Variable constante
integer, parameter :: imax=3*maxint
real, dimension(10) :: vector1, vector2
logical :: test=.false.
real :: ax, bx=1.0
complex :: z=(0.,1.)

! Para declarar cadenas de caracteres se utiliza la siguiente sintaxis:
! character[(len=<longitud>)][,<atributo(s)>][::]<variable(s)>[=<valor>]

!Si no se provee una longitud, se toma como una cadena de un solo caracter.
character :: char = "a"
character(len=4) :: string = "hola"
! Si no se conoce la longitud de la cadena, se puede utilizar un "comodin", pero esta debe ser parameter
character(len=*), parameter :: var_string = "Hola Mundo! AAAAAAAAAAAAAAAAAa", var_2 = ":)"

!Tipos de reales:
!Todos los compiladores Fortran manejan hasta una double precisión. Para especificar la
!precisión, se hace lo siguiente.

! real(kind=<np>):
! donde <np> = 4 para simple precisión, 8 para double precisión y 16 para cuadruple precisión (Compiladores Intel tienen soporte para esta precisión)

real(kind=4) :: x = 1.e0 !Donde e es el identificador de notación científica para simple precisión
real(kind=8) :: y = -2.d-5 !d para doble precisión
!real(kind=16) :: z = qx=-3.q-100 y q para cuadruple precisión

!También se puede declarar de la siguiente manera:
real :: p = 1.24_4 !Simple precisión np=4
real :: q = 1.23e15_8 !Doble precisión np = 8
!real :: z = 1.33e-100_16

!Como se puede apreciar a continuación, estos mismos prefijos se extienden a los complejos:
integer, parameter :: np = 8
real(kind=4) :: f=(1.e0,0.)
real(kind=8) :: g=(-2.d-5,1.d0)
real(kind=16) :: qg=(-3.q100, -1.q-10)
real(kind=np) :: z_np = (1._np, -1._np)




    
end program variables