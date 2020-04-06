import numpy as np

A = np.array([[-2,-2,2,1],[-3,4,0,-2],[-1,2,3,2],[3,2,3,2]])

b = np.array([-5, -1, 0, 4])

x = np.linalg.solve(A,b)

print(x)
