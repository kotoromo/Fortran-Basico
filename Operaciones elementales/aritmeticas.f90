!Segun sea el tipo de la variable, van a ser su definicón de las operaciones aritmeticas.

program aritmeticas
implicit none

integer a, b

real c, d

complex z1, z2

a = 2
b = 1

c = 3.1416
d = 9.81

z1 = cmplx(4, 4)
z2 = cmplx(2, 1)

print *, "Operaciones con enteros:"

print *, "a + b = ", a + b

print *, "a - b = ", a - b

print *, "a * b = ", a * b

print *, "a / b = ", a / b

print *, "a ^ b = ", a ** b


print *, "Operaciones con reales:"

print *, "c + d = ", c + d

print *, "c - d = ", c - d

print *, "c * d = ", c * d

print *, "c / d = ", c / d

print *, "c ^ d = ", c ** d


print *, "Operaciones con complejos:"

print *, "z1 + z2 = ", z1 + z2

print *, "z1 - z2 = ", z1 - z2

print *, "z1 * z2 = ", z1 * z2

print *, "z1 / z2 = ", z1 / z2

print *, "z1 ^ z2 = ", z1 ** z2

    
end program aritmeticas