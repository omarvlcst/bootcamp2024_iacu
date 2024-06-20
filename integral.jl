A = 0.0
B = 1.0
pasos = 4

delta = (B-A)/pasos

x_i = A + (delta/2)
h1 = x_i*x_i
x_i = x_i + delta
h2 = x_i * x_i
x_i = x_i + delta
h3 = x_i * x_i
x_i = x_i + delta
h4 = x_i * x_i

integral = delta * (h1+h2+h3+h4)
println(integral)
