program ej2

  !Programa que resuelve ecuaciones de segundo grado. Soporta raices complejas
  complex x_1, x_2, aux
  real a, b, c, disc

  print *, "Sea la ecuación con la forma ax² + bx + c = 0"
  print *, "Porfavor ingresa los valores de los coeficientes a, b y c"
  read *, a, b, c

  disc = b**2 - (4*a*c)

  if (disc < 0) then
    disc = - sqrt(abs(disc))
    aux = cmplx(0, disc)

  end if

  x_1 = (-b + aux)/(2*a)
  x_2 = (-b - aux)/(2*a)


  print *, "Las raices son: x = {", x_1, ", ", x_2, "}"



end program ej2
