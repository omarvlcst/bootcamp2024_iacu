d0 = [2.0 5.0 7.0 3.0 -1.0]   #Diagonal principal
d1 = [0.0 3.0 -4.0 -2.0 3.0]  #Diagonal inferior
d2 = [4.0 -2.0 3.0 1.0 0.0]   #Diagonal superior
b = [6.0 6.0 6.0 2.0 2.0]     #Vector

#Matriz = [2 4 0 0 0 ; 3 5 -2 0 0 ; 0 -4 7 3 0 ; 0 0 -2 3 1 ; 0 0 0 3 -1]
#println(Matriz)

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