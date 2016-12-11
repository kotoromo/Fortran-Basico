!Los arreglos pueden almacenar un tamaño fijo de una colección secuencial de elementos del mismo tipo. Un arreglo es usado para almacenar una
!colección de datos, pero es más útil pensar de ellos como una colección de variables del mismo tipo.

!Todos los arreglos consisten de locaciones en memoria continuas. La dirección de memoria más baja corresponde al primer elemenento
!y la mas alta al último.

!Los arreglos pueden ser unidimensionales (vectores), bidimensionales (arreglos). Fortran soporta hasta 7 dimensiones.

program tam_fijo
!Para declarar un arreglo se utiliza los atributos de dimension
real, dimension(5) :: arreglo_1

!Otra forma de declarar un arreglo unidimensional es utilizando la siguiente sintaxis:
real, dimension(-1:3) :: arreglo_2 = (/1, 2, 3, 4, 5/)

!Si queremos crear un arreglo bidimensional o una matriz, hariamos la siguiente declaración:
integer, dimension (5,5) :: matriz

!Si queremos declarar un arreglo con un limite inferior, lo podemos hacer de manera explicita:
integer, dimension(0:4) :: arreglo_3
!Con esto declaramos un arreglo que inicia en el idice 0 y termina en el 4

!Y de igual manera con los arreglos de dimensiones superiores:
integer, dimension(0:4, 1:6) :: matriz_2
! En este caso, declaramos una matriz tal que los indices del primer arreglo contiene 5 elementos comenzando sus
! indices en 0 hasta el 4 y cada uno de estos elementos del arreglo contiene un arreglo de integers con 6 elementos de
! tal manera que si lo fueramos a ilustrar de manera gráfica tendíamos algo similar a esto:

!indice: 0  1  2  3  4
!1      [ ][ ][ ][ ][ ]
!2		[ ][ ][ ][ ][ ]
!3		[ ][ ][ ][ ][ ]
!4		[ ][ ][ ][ ][ ]
!5		[ ][ ][ ][ ][ ]
!6		[ ][ ][ ][ ][ ]


integer, dimension(4,4):: matriz_3

!-------------------------------------------------------------------------------------------------------------------


!Para acceder a los elementos de un arreglo simplemente llamamos al arreglo y especificamos su indice con paréntesis:

!Recordemos que arreglo_1 contiene 5 números reales y va desde (1 ≤ i ≤ 5). 
!Estos números pueden ser accedidos utilizando sus indices comenzando desde el 1 entonces.

print *, "Posición 1 de arreglo_1: ", arreglo_1(1)
print *, "Posición (2, 6) de matriz_2: ", matriz_2(2, 6)

!Además, Fortran nos permite acceder a diversos elementos utilizando sólo una sentencia.
!Para acceder a una sección del arreglo, es necesario proveer de los límites inferior y superior asi como un incremento
!para todas las dimensiones

!A esto se le llama "Subscript Triplets" o Triplete de Subindices:
!		array ([lower]:[upper][:stride], ...)
!donde lower es el límite inferior está dado por el parámetro lower; El superior upper y el incremento stride

print *, "matriz_2(1:4:1): ", matriz_3(1:4:1, 1:4:1)
!Recorremos del intervalo 1 al 4 de 1 en 1 para la dimensión 1 y para la dimensión 2

print *, "matriz_2(1:4:1): ", matriz_3(1:4:1, 3:1:-1)
!Recorremos en sentido inverso ahora la dimensión 2 desde 3 a 1

end program tam_fijo