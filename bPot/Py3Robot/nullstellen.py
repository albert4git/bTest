import numpy as np

f = np.poly1d([4,12,-7,-5])

print("f: ")
print(f)
print("Nullstellen: ", np.roots(f))
