"""
$ U\_{fN} = 60 \text{V} $

| 表 1   |
| ------ | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| α      | 0°    | 10°   | 20°   | 30°   | 40°   | 50°   | 60°   | 70°   | 80°   | 90°   |
| Ur (V) | 0.207 | 5.94  | 11.20 | 16.22 | 21.27 | 25.23 | 28.40 | 31.07 | 32.53 | 33.01 |
| α      | 100°  | 110°  | 120°  | 130°  | 140°  | 150°  | 160°  | 170°  | 180°  |
| Ur (V) | 32.46 | 30.95 | 28.64 | 25.18 | 21.13 | 16.13 | 11.51 | 5.40  | 0.493 |       |

| 表 2   |
| ------ | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| α      | 0°    | 10°   | 20°   | 30°   | 40°   | 50°   | 60°   | 70°   | 80°   | 90°   |
| Un (V) | 0.364 | 3.333 | 6.04  | 9.49  | 13.11 | 17.07 | 20.80 | 23.86 | 25.72 | 26.39 |
| α      | 100°  | 110°  | 120°  | 130°  | 140°  | 150°  | 160°  | 170°  | 180°  |
| Un (V) | 25.82 | 24.12 | 21.20 | 16.67 | 12.58 | 8.74  | 5.25  | 2.20  | 0.514 |

| 表 3   |
| ------ | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| α      | -60°  | -50°  | -40°  | -30°  | -20°  | -10°  | 0°    |
| Ur (V) | 16.85 | 14.22 | 11.62 | 8.31  | 5.74  | 2.640 | 0.228 |
| α      | 10°   | 20°   | 30°   | 40°   | 50°   | 60°   |       |
| Ur (V) | 2.921 | 6.41  | 9.28  | 12.28 | 14.97 | 17.80 |       |

| 表 4   |
| ------ | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| α      | 0°    | 10°   | 20°   | 30°   | 40°   | 50°   | 60°   | 70°   | 80°   | 90°   |
| Ur (V) | 0.96  | 4.54  | 9.15  | 13.54 | 17.30 | 20.57 | 23.32 | 25.22 | 26.58 | 27.04 |
| α      | 100°  | 110°  | 120°  | 130°  | 140°  | 150°  | 160°  | 170°  | 180°  |
| Ur (V) | 26.74 | 25.52 | 23.50 | 20.61 | 17.19 | 13.87 | 9.13  | 4.57  | 0.223 |


"""

import matplotlib.pyplot as plt

# set CJK font
plt.rcParams['font.sans-serif'] = ['Noto Sans CJK SC', 'SimHei', 'Arial']

"""根据表7-1、表7-2、表7-3和表7-4的数据，在同一图中绘制空载、负载、二次侧补偿后、一次侧补偿后时正余弦旋转变压器空载时输出电压Ur0与转子转角ɑ的关系曲线，即Ur0=f（ɑ）。"""

alpha = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90,
         100, 110, 120, 130, 140, 150, 160, 170, 180]
# 表7-1
Ur = [0.207, 5.94, 11.20, 16.22, 21.27, 25.23, 28.40, 31.07, 32.53, 33.01,
      32.46, 30.95, 28.64, 25.18, 21.13, 16.13, 11.51, 5.40, 0.493]

# 表7-2
Un = [0.364, 3.333, 6.04, 9.49, 13.11, 17.07, 20.80, 23.86, 25.72, 26.39,
      25.82, 24.12, 21.20, 16.67, 12.58, 8.74, 5.25, 2.20, 0.514]

# 表7-3
Ur1 = [16.85, 14.22, 11.62, 8.31, 5.74, 2.640, 0.228, 2.921, 6.41, 9.28, 12.28, 14.97, 17.80]

# 表7-4
Ur2 = [0.96, 4.54, 9.15, 13.54, 17.30, 20.57, 23.32, 25.22, 26.58, 27.04, 26.74, 25.52, 23.50, 20.61, 17.19, 13.87, 9.13, 4.57, 0.223]

plt.plot(alpha, Ur, label='空载', marker='o')
plt.plot(alpha, Un, label='负载', marker='x')

alpha3 = [-60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50, 60]
plt.plot(alpha3, Ur1, label='二次侧补偿后', marker='o')
plt.plot(alpha, Ur2, label='一、二次侧补偿后', marker='o')

plt.xlabel('ɑ')
plt.ylabel('U')
plt.legend()

# plt.show()
plt.savefig('dist/7.svg')

"""
| 表 5   |
| ------ | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| α      | 0°    | 10°   | 20°   | 30°   | 40°   | 50°   | 60°   | 70°   | 80°   | 90°   |
| Un (V) | 0.070 | 4.95  | 9.31  | 13.44 | 17.44 | 20.65 | 23.40 | 25.41 | 26.55 | 27.04 |
| α      | 100°  | 110°  | 120°  | 130°  | 140°  | 150°  | 160°  | 170°  | 180°  |
| Un (V) | 26.62 | 25.32 | 23.39 | 20.74 | 17.35 | 13.46 | 8.75  | 4.71  | 1.160 |
"""

# 根据表7-5的实验记录数据，绘制正余弦旋转变压器作线性应用时输出电压Ur与转子转角ɑ的关系曲线，即 $U_r = f(alpha)$。

alpha = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90,
            100, 110, 120, 130, 140, 150, 160, 170, 180]

Un = [0.070, 4.95, 9.31, 13.44, 17.44, 20.65, 23.40, 25.41, 26.55, 27.04,
      26.62, 25.32, 23.39, 20.74, 17.35, 13.46, 8.75, 4.71, 1.160]

plt.figure()
plt.plot(alpha, Un, label='线性应用', marker='x')
plt.xlabel('ɑ')
plt.ylabel('U')
plt.legend()
plt.savefig('dist/7-2.svg')
