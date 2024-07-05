n1 = [1922, 1888, 1817, 1715, 1462, 1372, 1322, 1205, 1200, 1166, 970, 0]
T1 = [0.02, 0.04, 0.06, 0.08, 0.1, 0.11, 0.12, 0.13, 0.135, 0.14, 0.15, 0.155]
n2 = [1663, 1629, 1597, 1518, 1471, 1300, 1054, 830, 0]
T2 = [0.01, 0.02, 0.03, 0.04, 0.05, 0.06, 0.07, 0.08, 0.085]
n3 = [1861, 1815, 1586, 1327, 1233, 1179, 1103, 946, 0]
T3 = [0.02, 0.04, 0.06, 0.08, 0.09, 0.1, 0.11, 0.12, 0.13]

import matplotlib.pyplot as plt
import numpy as np

plt.style.use("ggplot")

plt.plot(T1, n1, 'bx', label='T1')
plt.plot(T2, n2, 'rx', label='T2')
plt.plot(T3, n3, 'gx', label='T3')

line1 = np.polyfit(n1, T1, 2)
line2 = np.polyfit(n2, T2, 2)
line3 = np.polyfit(n3, T3, 2)

x = np.linspace(0, 2000, 100)
y1 = np.polyval(line1, x)
y2 = np.polyval(line2, x)
y3 = np.polyval(line3, x)
plt.plot(y1, x, 'b--')
plt.plot(y2, x, 'r--')
plt.plot(y3, x, 'g--')

plt.ylabel('n (r/min)')
plt.xlabel('T (N M)')

plt.ylim(-20, 2000)
plt.legend()

plt.savefig('dist/5.svg')
