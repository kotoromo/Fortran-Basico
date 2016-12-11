!Versiones antiguas de Fortran (En ese tiempo FORTRAN) permitian el uso de una característica llamada
!implicit typing. Esto se refiere a que no había que declarar las variables antes de usarlas.
!Si la variable no está declarada, entonces la primera letra de su nombre determinará su tipo:
!Para números enteros se utilizan las letras i, j, k , l, m, n. El resto son para reales.

!El uso de esta caracteristica no se recomienda, pues crea malas prácticas de programación.
!Para desactivar esta ćaracteristica, se escribe la sentencia implicit none al principio

program implicit

!implicit none !Si descomentas esta linea, verás que te aparecen errores!

i_num = 102
k_num = 1023

z_num = 2.22
v_num = 22.14823

print *, i_num + k_num - z_num / v_num

end program implicit