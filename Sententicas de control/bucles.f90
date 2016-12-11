program bucles
integer i, j

!Los bucles son una herramienta especialmente útil cuando es necesario repetir alguna sentencia o grupo de sentencias
!de manera ciclica. Fortran nos permite el uso de bucles do (similar al ciclo for de otros lenguajes) y el bucle
!do-while

!Supongase que se tiene el siguiente arreglo:
integer pi(5)
data pi /3,1,4,1,6/

!Si quisieramos imprimirlo, veremos que tendriamos que nombrar cada uno de sus elementos uno por uno e imprimirlos:
!print *, pi(1)
!print *, pi(2)
!	....

!Si quisieramos agilizar este proceso, podemos utilizar un bucle do:
do i=1, size(pi)
print *, "Pi: ",pi(i)
end do

!Si quisieramos un bucle que haga algo hasta que una condición sea verdadera, hacemos uso de el bucle do-while:
i = 1
do while (i .ne. size(pi)+1)
print *, "Pi_2: ", pi(i)
i = i + 1
end do

!Este bucle hace lo mismo que el anterior.

!También se puede utilizar algo llamado "Implied DO" para construir arreglos de dimensión 1
!Utilizando la siguiente sintaxis:

! 					<expr. 1>[, <expr. 2>, <expr. k>], <variable>  = <np>, <nf>[,<nc>]

!Donde aquellas expresiones encerradas en corchetes son opcionales. Además, <variable>
!debe ser de tipo Integer, que toma los valores enteros np, np+nc, np+nc+nc, ..., comprendidos
!entre np y nf; Si se omite nc, toma el valor de 1.

!Ejemplo:
print *, (0, (-1)**k, k=0, 2)!Esto da 0, 1, 0, -1, 0, 1

print *, (0, (0, -1)**k, k=0, 2)

!Estos ciclos se pueden anidar:

print *, (i*k, (j*j, i*j, j=1, 3), i=2, 4)

print *, (1+k, (1, j**k, j=1, 2), k = 1, 2)

!Por último, podemos controlar el flujo del bucle con las instrucciones:
! exit: Sale instantaneamente del bucle
! cycle: El programa continua at inicio de la siguiente iteración
! stop: El programa detiene su ejecución.

end program bucles