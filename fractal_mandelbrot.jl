using Plots


function mult_cmplx(expr1, expr2)
  real = expr1[1]*expr2[1] - expr1[2]*expr2[2]
  img = expr1[1]*expr2[2] + expr1[2]*expr2[1]
  return [real, img]
end


function mod(cmplx)
  r_2 = cmplx[1]*cmplx[1]
  i_2 = cmplx[2]*cmplx[2]
  return sqrt(r_2 + i_2)
end


function divergeQ(z)
  if mod(z) > 3
    return true 
  else
    return false
  end
end


n = 1000
M = zeros(n, n)

x = range(-2, 2, length=n)
y = range(-2, 2, length=n)

for i in 1:n
  for j in 1:n
    a = x[j]
    b = y[i]
    data = [a, b]

    z = [0, 0]
    for k in 1:256
      z = mult_cmplx(z, z) + data
      if divergeQ(z)
        M[i, j] = mod(z)
        break
      end
    end
  end
end

heatmap(M)
