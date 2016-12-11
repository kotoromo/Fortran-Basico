program eval_logica

logical :: p1, p2, q

!Cuando la instrucción es muy larga, se utiliza el operador &
q=(.not.(p1.or.p2).eqv.&
((.not.p1).and.(.not.q)))

print *, "q=", q
    
end program eval_logica