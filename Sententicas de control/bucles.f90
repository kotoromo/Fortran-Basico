program bucles

!También se puede utilizar algo llamado "Implied DO" para construir arreglos de dimensión 1
!Utilizando la siguiente sintaxis:

! 					<expr. 1>[, <expr. 2>, <expr. k>], <variable>  = <np>, <nf>[,<nc>]

!Donde aquellas expresiones encerradas en corchetes son opcionales. Además, <variable>
!debe ser de tipo Integer, que toma los valores enteros np, np+nc, np+nc+nc, ..., comprendidos
!entre np y nf; Si se omite nc, toma el valor de 1.

!Ejemplo:
integer k
(0, (-1)**k, k=0, 2) !Esto da 0, 1, 0, -1, 0, 1

end program bucles