import numpy as np

vectors = [ (np.array([5,9,-5]), np.array([-3,0,6])),
            (np.array([2,7,-3]), np.array([-2,1,1])),
            (np.array([2,3,-1]), np.array([-5,4,2])) ]

for (x,y) in vectors:

    abs_x = np.sqrt(np.dot(x,x))
    abs_y = np.sqrt(np.dot(y,y))

    cos_xy = np.dot(x,y) / (abs_x * abs_y)
    angle = np.arccos(cos_xy)
    print("\nDer Winkel zwischen ", x," und ", y, " beträgt:")
    print(" in Bogenmaß: ", angle)
    print(" in Grad: ", angle * 360 / np.pi / 2)
