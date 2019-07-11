from scipy.integrate import odeint
import numpy as np
import matplotlib.pyplot as plt

k = 2.2


def myode(y, t):
    "ode defining exponential growth"
    return k * y


y0 = 3
tspan = np.linspace(0, 1)
y = odeint(myode, y0, tspan)

plt.plot(tspan, y)
plt.xlabel('Time')
plt.ylabel('y')
plt.savefig('./funcs-ode.png')
plt.show()
