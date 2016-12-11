!Formato que debe seguir todo programa en Fortran:

!<Identificación unidad Programática>
!:
!: ! Instrucciones no ejecutables
!:
!:
!: ! Instrucciones ejecutables
!:
!end <Unidad Programática>

program primer_prog
!Aqui declaramos los objetos que van a ser utilizados en el programa.
integer, parameter :: a = 10
integer, parameter :: b = 20
integer :: res

!Aquí declaramos instrucciones ejecutables como operaciones, lectura y 
!escritura de datos así como llamadas a subprogramas, etc.
Print *, "Hola! Sea a = 10, b = 20, mi edad está dada por a+b..."
Print *, "Cuál es mi edad?"

res = a+b

Print *, "> ", res, "años!"

end program primer_prog