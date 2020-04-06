import numpy as np

f = np.poly1d([2,-3,-2,-1])

print("Integral: \n", f.integ())
print("Ableitung: \n", f.deriv())


