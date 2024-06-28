mutable struct Matriz3diag
	d0::Vector
	d1::Vector
	d2::Vector
end

function suma(matriz1::Matriz3diag,matriz2::Matriz3diag)
	n=length(matriz.d0)
	a=zeros(n)
	b=zeros(n)
	c=zeros(n)
	resultado=Matriz3diag(a,b,c)
	for i=1:n 
		resultado.d0[i]=matriz.d0[i]+matriz2.d0[i]
		resultado.d1[i]=matriz.d1[i]+matriz2.d1[i]
		resultado.d2[i]=matriz.d2[i]+matriz2.d2[i]
	end
	return resultado
end