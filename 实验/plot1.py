import matplotlib.pyplot as plt
import numpy as np

n1 = [0.501, 0.783, 1.024, 1.134, 1.238, 1.339, 1.459, 1.583]
T1 = [1718, 1701, 1688, 1678, 1672, 1665, 1658, 1650]

n2 = [0.410, 0.647, 0.783, 0.916, 1.162]
T2 = [1508, 1373, 1284, 1194, 1059]

plt.style.use("ggplot")

plt.plot(T1, n1, 'bx', label='T1')
plt.plot(T2, n2, 'rx', label='T2')

# 拟合直线，画虚线过 x = 0
line1 = np.polyfit(n1, T1, 1)
line2 = np.polyfit(n2, T2, 1)
plt.plot([line1[1], line1[0] * 1.6 + line1[1]], [0, 1.6], 'b--')
plt.plot([line2[1], line2[0] * 1.6 + line2[1]], [0, 1.6], 'r--')

# Set n axis start from 0
plt.ylim(0, 1.6)
plt.ylabel('n (r/min)')
plt.xlabel('T (N M)')
plt.legend()

plt.savefig('dist/1.svg')