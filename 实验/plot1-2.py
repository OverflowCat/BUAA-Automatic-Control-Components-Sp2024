import matplotlib.pyplot as plt

# 数据
U0 = [240, 230, 220, 210, 180, 150, 120]  # U0(V)
I0 = [60, 55, 51, 47, 35, 27, 20]  # I0(mA)
P0 = [1.71, 1.60, 1.54, 1.49, 1.22, 0.94, 0.73]  # P0(W)

# 绘图
fig, ax1 = plt.subplots()

# 绘制I0=f(U0)
ax1.plot(U0, I0, marker='o', color='blue', label='I0(mA)')
ax1.set_xlabel('U0(V)')
ax1.set_ylabel('I0(mA)', color='blue')
ax1.tick_params(axis='y', labelcolor='blue')

# 创建第二个y轴，绘制P0=f(U0)
ax2 = ax1.twinx()
ax2.plot(U0, P0, marker='s', color='red', label='P0(W)')
ax2.set_ylabel('P0(W)', color='red')
ax2.tick_params(axis='y', labelcolor='red')

# 添加图例
ax1.legend(loc='upper left')
ax2.legend(loc='upper right')

# 保存为SVG文件
plt.savefig('transformer_characteristics.svg', format='svg')

# 显示图形
plt.show()
