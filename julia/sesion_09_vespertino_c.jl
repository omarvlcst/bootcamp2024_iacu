@pyinclude("nombre_script.py")

# Invocando cÃ³digo C desde Julia

# @ccall biblioteca.nombre_funcion(arg1::tipoarg, arg2::tipoarg,...)::tiporegresado

# @ccall nombre_funcion(arg1::tipoarg, arg2::tipoarg,...)::tiporegresado

# @ccall $apuntador_funcion(arg1::tipoarg, arg2::tipoarg, ...)::tiporegresado

t = @ccall clock()::Int32

t = @ccall clock()::Int32

ruta = @ccall getenv("SHELL"::Cstring)::Cstring

unsafe_string(ruta)
# > /bin/bash

function valorVariable(var::AbstractString)
	valor = @ccall getenv(var::Cstring)::Cstring
	if valor == C_NULL
		error("getenv: Variable de ambiente no encontrada: ", var)
	end
	return unsafe_string(valor)
end

valorVariable("PWD")
#> home/taller