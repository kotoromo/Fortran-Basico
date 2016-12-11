!Recordemos. Para declarar una variable que almacene caracteres, hacemos lo siguiente:
!character :: nom_var
!Y para declarar cadenas de caracteres haciamos lo siguiente:
!character(len=20) :: string_var
!Además, para la declaración de constantes haciamos uso del atributo "parameter":
!real, parameter :: const

!Entonces, para declarar una variable que almacena caracteres que no permita cambios, hacemos lo siguiente:
!character, parameter :: const_char
!character(len=4), parameter :: const_string

!Además, si no se sabe el tamaño exácto de la cadena, se puede utilizar el caracter * que actua como un tipo de
!comodín para que la longitud sea autoajustable:
!character(len=*), parameter :: len_desconocido = "Hola Mundo!"
!Para que funcione esto, se debe siempre declarar como un constante com el atributo "parameter"

program const_caract
character :: nom_var
character(len=20) :: string_var
real, parameter :: const = 2.7921

character, parameter :: const_char = 'c'
character(len=4), parameter :: const_string = "Hola"

character(len=*), parameter :: len_desconocido = "Hola Mundo!"
!character(len=*) :: len_desconocido = "Hola Mundo!" !Esto produce un error


end program const_caract