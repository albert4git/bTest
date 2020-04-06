import numpy as np

vectors = [ (np.array([2,7,-3]), np.array([-2,1,1])),
            (np.array([2,3,-1]), np.array([-5,4,2])) ]

for (x,y) in vectors:
    if np.dot(x,y) == 0:
        print(x," und ", y, " stehen senkrecht aufeinander!")
    else:
        print(x," und ", y, " stehen nicht senkrecht aufeinander!")
