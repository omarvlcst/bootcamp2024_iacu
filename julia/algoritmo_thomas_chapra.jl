#=
EJEMPLO SACADO DEL LIBRO "Numerical Methods for Engineers" de Steven Chapra
Capítulos: Special Matrices and Gauss-Siedel & Boundary Value and Eigenvalue Problems
=#

#Diagonal principal d0
d0 = [2.04 2.04 2.04 2.04]

#Diagonal d1 inferior , se agrega un 0 en la posicion #1 y se comienza con la entrada [2,1]
d1 = [0.0 -1.0 -1.0 -1.0]

#Diagonal d2 superior, se comienza con la entrada [1,2] y se agrega un 0 en la ultima posicion #n
d2 = [-1.0 -1.0 -1.0 0.0]

#Vector columna
b = [40.8 0.8 0.8 200.8]

# Matriz = [2 4 0 0 0 ; 3 5 -2 0 0 ; 0 -4 7 3 0 ; 0 0 -2 3 1 ; 0 0 0 3 -1]

n = length(b)
x = zeros(n)

for i=2:n
    alpha = d1[i]/d0[i-1]
    d0[i] = d0[i]-alpha*d2[i-1]
    b[i] = b[i]-alpha*b[i-1]
end

x[n] = b[n]/d0[n]

for i=n-1:-1:1
    x[i] = (b[i] - d2[i]*x[i+1])/d0[i]
end

println(x)