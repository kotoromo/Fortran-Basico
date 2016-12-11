!Arreglos dinámicos
!Un Arreglo dinámico es un arreglo cuyo espacio en memoria se determina en tiempo de ejecución y no en compilación

program mem_dinam

!Sintaxis para declarar un arreglo dinámico.
integer, dimension(:, :), allocatable :: din_array

!Sea el siguiente arreglo:
integer :: a(3, 3)

!Podemos inicializar este arreglo con ayuda de la sentencia data:
data a(1, : ) /1,1,1/
data a(2, : ) /2,2,2/
data a(3, : ) /3,3,3/

!Antes de poder utilizar, debemos asignar un espacio de memoria al arreglo:
allocate(din_array(2, 0:2)) !En este caso asignamos espacio suficiente para un arreglo de tamaño 5 (0:2 = 3 + 1:2 = 2 = 5)

!Cuando terminamos de utilizar el arreglo, liberamos este espacio en memoria asignado mediante
!la función intrinseca deallocate(array)

deallocate(din_array)


end program mem_dinam