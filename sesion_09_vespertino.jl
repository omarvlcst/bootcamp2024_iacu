import Pkg
Pkg.add("PyCall")

# En una terminal en nuestro ambiente conda de Julia, se debe instalar Numpy y Matlplotlib
# pip install numpy matplotlib

using PyCall
mate = pyimport("math")
mate.sin(mate.pi/4)

numpy1 = pyimport("numpy") #import numpy as numpy1

a=nump1.zeros(10) #numpy.zeros(10)
typeof(a))
# > Vector{Float64} (alias for Array{Float64, 1})

B = numpy1.zeros([3,3])
# > 3x3 Matrix{Float64}:
""
# 0.0 0.0 0.0
# 0.0 0.0 0.0
# 0.0 0.0 0.0
""

plt = pyimport("matplotlib.pyplot") #import matplotlib.pyplot as plt
x =range(0; stop=2*numpy1.pi, length=1000); y =sin.(3*x+4*cos.(2*x));
plt.plot(x,y,color="red", linewidth =2.0, linestyle="--")
plt.savefig("test.png")

so=pyimport("scipy.optimize")
so.newton(x -> cos(x) - x, 1))

py"""
import numpy as np

def absoluto(x):
	if x<0:
		return -x
	return x
"""

py"absoluto"(-100)