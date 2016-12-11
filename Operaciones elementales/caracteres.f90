program caracteres
!Para operar con caracteres y cadenas tenemos distintas herramientas.
!Para concatenar, se hace uso del operador //:

character(len=*), parameter :: mensaje1 = "Hola "
character(len=25):: mensaje2 = "Mundo!"
integer :: int = 65
character :: char = 'A'

mensaje2 = mensaje1//mensaje2

print *, mensaje2

!La funcion len(string) nos permite saber la longitud de la cadena string.
print *, "len(mensaje2):", len(mensaje2)
!La función index(string, substring) nos permite conocer el indice de la subcadena dentro de otra cadena. Regresa 0 si falla.
print *, "index(mensaje2, 'Mundo'):", index(mensaje2, 'Mundo')

!La función achar(int) nos permite convertir un integer int en un character
print *, "achar(int):", achar(int)

!La función iachar(c) nos permite convertir un character a un integer
print *, "iachar(char): ", iachar(char)

!La función trim nos permite quitar los blancos sobrantes
print *, "trim('hola      '):", trim('hola     ')

!La función scan(string, chars) busca la cadena "string" de atras hacia delante por la primera ocurrencia de cualquier character 
!contenido en chars. Retorna un integer que da la posición de ese character, o zero si sólo los caracteres en char han sido encontrados.
print *, "scan(mensaje2, 'aeiou'):", scan(mensaje2, 'aeiou')

!La función verify(string, chars) busca la cadena "string" de atras hacia delante por la primera ocurrencia de cualquier 
!character no contenido en chars. Retorna un integer que da la posición de ese character, o zero si sólo los caracteres 
!en char han sido encontrados.
print *, "verify(mensaje2, 'aeiou'):", verify(mensaje2, 'aeiou')

!La función adjustl(string) justifica a la izquierda los caracteres contenidos en string
print *, "adjustl(mensaje2):", adjustl(mensaje2)

!La función adjustr(string) justifica a la derecha los caracteres contenidos en string
print *, "adjustr(mensaje2):", adjustr(mensaje2)

!La función len_trim(string) Retorna un integer igual a la longitud de string menos el número de espacios sobrantes.
print *, "len_trim(mensaje2//'         '):", len_trim(mensaje2//'         ')

!La función repeat(string,ncopy) retorna una cadena con longitud igual a ncopy veces la longitud de string, conteniendo
!ncopy copias concatenadas de string
print *, "repeat('*', 30):", repeat('*', 30)

!Funciones léxicas de orden de caracteres:
!Fortran también soporta de manera nativa maneras en las que se puede verificar la secuencia léxicas 
!de los caracteres por medio de las siguientes funciones:

!Compara si el primer caracter es lexicamente menor que o igual al segundo:
print *, "lle('A', 'B'):", lle('A', 'B')

!Compara si el primer caracter es lexicamente mayor que o igual al segundo:
print *, "lge('B', 'A'):", lge('B', 'A')

!Compara si el primer caracter es lexicamente menor que el segundo:
print *, "lgt('A', 'D'):", lgt('A', 'D')

!Compara si el primer caracter es lexicamente menor que el segundo:
print *, "llt('z', 'X'):", llt('z', 'X')

end program caracteres