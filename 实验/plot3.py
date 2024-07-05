import matplotlib.pyplot as plt
import numpy as np

plt.style.use("ggplot")

# draw S = f(T_e^*)
S = [0.0, 0.0625, 0.0875, 0.125, 0.275]
T_e = [
    0.0,
    0.5405405405405406,
    0.6756756756756757,
    0.8108108108108107,
    1.0,
]
plt.plot(T_e, S, color="#0098c9", marker="x", linestyle="None", label="8V")
curve = np.polyfit(T_e, S, 6)
x = np.linspace(0, 1, 100)
y = np.polyval(curve, x)
plt.plot(x, y, color="#0098c9", linestyle="--")

S = [
    -0.0,
    0.05334,
    0.09334,
    0.14667,
    0.3333,
]
T_e = [
    0.0,
    0.364,
    0.545,
    0.727,
    1.0,
]

plt.plot(T_e, S, color="#25ab6c", marker="x", linestyle="None", label="4V")
curve = np.polyfit(T_e, S, 6)
x = np.linspace(0, 1, 100)
y = np.polyval(curve, x)
plt.plot(x, y, color="#25ab6c", linestyle="--")

plt.xlabel("Te*")
# plt.ylabel('S')
plt.legend()
# 设置 y 轴范围 为 0 ~ 1
plt.ylim(0, 1)
# 设置 x 轴范围 为 0 ~ 1
plt.xlim(0, 1)
# Invert y-axis
plt.gca().invert_yaxis()

plt.savefig("dist/3.svg")