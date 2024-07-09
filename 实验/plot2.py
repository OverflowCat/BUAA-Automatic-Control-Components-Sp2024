import matplotlib.pyplot as plt
import numpy as np


def plot(U0, I0, P0, filename):
    fig, ax1 = plt.subplots()

    # 绘制 P0 曲线
    ax1.plot(U0, P0, marker='x', color='red', label='P0(W)', linestyle='none')
    ax1.set_xlabel('U0(V)')
    ax1.set_ylabel('P0(W)', color='red')
    ax1.tick_params(axis='y', labelcolor='red')

    # 拟合 P0 曲线
    line1 = np.polyfit(U0, P0, 2)
    U0_fit = np.linspace(120, 240, 100)
    P0_fit = np.polyval(line1, U0_fit)
    ax1.plot(U0_fit, P0_fit, color='red', linestyle='-')

    # 创建第二个 y 轴
    ax2 = ax1.twinx()
    ax2.plot(U0, I0, marker='x', color='blue', label='I0(mA)', linestyle='none')
    ax2.set_ylabel('I0(mA)', color='blue')
    ax2.tick_params(axis='y', labelcolor='blue')

    # 拟合 I0 曲线
    line2 = np.polyfit(U0, I0, 3)
    I0_fit = np.polyval(line2, U0_fit)
    ax2.plot(U0_fit, I0_fit, color='blue', linestyle='--')

    fig.tight_layout()
    plt.savefig(f'dist/2-{filename}.svg')

def plot1():
    U0 = [240, 230, 220, 210, 180, 150, 120]  # U0(V)
    I0 = [60, 55, 51, 47, 35, 27, 20]  # I0(mA)
    P0 = [1.71, 1.60, 1.54, 1.49, 1.22, 0.94, 0.73]  # P0(W)
    plot(U0, I0, P0, '1')

"""
| 序号 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|---|---|---|---|---|---|---|---|
| $U_0$ (V) | 240 | 230 | 220 | 210 | 180 | 150 | 120 |
| $I_0$ (mA) | 29.37 | 27.78 | 26.26 | 25.18 | 22.28 | 19.80 | 18.02 |
| $P_0$ (W) | 4.92 | 4.51 | 4.15 | 3.81 | 2.90 | 2.13 | 1.44 |
"""

def plot2():
    U0 = [240, 230, 220, 210, 180, 150, 120]  # U0(V)
    I0 = [29.37, 27.78, 26.26, 25.18, 22.28, 19.80, 18.02]  # I0(mA)
    P0 = [4.92, 4.51, 4.15, 3.81, 2.90, 2.13, 1.44]  # P0(W)
    plot(U0, I0, P0, '2')

if __name__ == '__main__':
    plot1()
    plot2()
