mutable struct Matriz3diag
    d0::Vector
    d1::Vector
    d2::Vector
end

function algoritmoDeThomas(una_matriz3::Matriz3diag,b1::Vector)
    n = length(b1)
    x = zeros(n)
    b = copy(b1)

    d0 = copy(una_matriz3.d0)
    d1 = una_matriz3.d1
    d2 = una_matriz3.d2

    for i ∈ 2:n
        α = d1[i]/d0[i-1]
        d0[i] = d0[i]-α*d2[i-1]
        b[i] = b[i]-α*b[i-1]
    end
    x[n] = b[n]/d0[n]
    for i ∈ n-1:-1:1
        x[i] = (b[i] - d2[i]*x[i+1])/d0[i]
    end
    return x
end

function suma(matriz1::Matriz3diag, matriz2::Matriz3diag)
    n = length(matriz1.d0)
    a = zeros(n)
    b = zeros(n)
    c = zeros(n)
    resultado = Matriz3diag(a,b,c)
    for i ∈ 1:n
        resultado.d0[i] = matriz1.d0[i] + matriz2.d0[i]
        resultado.d1[i] = matriz1.d1[i] + matriz2.d1[i]
        resultado.d2[i] = matriz1.d2[i] + matriz2.d2[i]
    end
    return resultado
end

function multM3diagVector(matriz::Matriz3diag, b::Vector)
    n = length(b)
    c = zeros(n)
    c[1] = b[1]*matriz.d0[1] + b[2]*matriz.d2[1]
    c[n] = b[n]*matriz.d0[n] + b[n-1]*matriz.d1[n]
    for i ∈ 2:n-1
        c[i] = b[i-1]*matriz.d1[i] + b[i]*matriz.d0[i] + b[i+1]*matriz.d2[i]
    end
    return c
end

d0 = [2.0,5.0,7.0,3.0,-1.0]
d1 = [0.0,3.0,-4.0,-2.0,3.0]
d2 = [4.0,-2.0,3.0,1.0,0.0]
b = [6.0,6.0,6.0,2.0,2.0]
eje_matriz = Matriz3diag(d0,d1,d2)
println(algoritmoDeThomas(eje_matriz,b))
eje_2 = Matriz3diag(d0,d1,d2)
println(suma(eje_matriz, eje_2))
println(multM3diagVector(eje_matriz, ones(5)))