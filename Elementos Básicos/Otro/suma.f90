program suma

real(kind=4), parameter :: r=10.e5
complex(kind=4), parameter :: z = (2.e4,243.2d05)
complex(kind=8), parameter :: res = r + z*(250, 0)

print *, "- Sr. Fortran... Cuánto es 10.e5 + 2.e4, 243.2d05*250?"
print *, "> Sencillo chico. El resultado es: ", res

end program suma






