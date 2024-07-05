#set text(lang: "zh", font: "Noto Serif CJK SC")
#show "。": "．"

#include "7-table.typ"

== 实验报告
1. 根据表7-1、表7-2、表7-3和表7-4的数据，在同一图中绘制空载、负载、二次侧补偿后、一次侧补偿后时正余弦旋转变压器空载时输出电压 $U_(r 0)$ 与转子转角 $ɑ$ 的关系曲线，即 $U_(r 0) = f(alpha)$。
  #figure(
    caption: "正余弦旋转变压器输出电压与转子转角关系曲线",
    image("dist/7.svg"),
  )

2. 根据表7-5的实验记录数据，绘制正余弦旋转变压器作线性应用时输出电压Ur与转子转角ɑ的关系曲线，即 $U_r = f(alpha)$。
  #figure(
    caption: "正余弦旋转变压器线性应用时输出电压与转子转角关系曲线",
    image("dist/7-2.svg", width: 85%, height: 9.8cm),
  )

== 思考题
1. 试分析旋转变压器一、二次侧补偿的原理。

  旋转变压器一次侧补偿通过短接交轴绕组，抵消交轴磁通对输出的影响，从而达到补偿目的。二次侧补偿则是通过在副边接对称负载，使得输出电压与转角保持严格的正余弦关系，消除交轴磁场。

2. 试分析正余弦旋转变压器作线性变压器的原理。

  将正余弦旋转变压器的定子励磁绕组和转子余弦输出绕组串联，并作为励磁的原边。当 $k μ approx 0.52$ 时，在 $θ= ±60$ 范围内，输出电压和转角成线性关系，并且与理想直线相比较，误差不超过 $0.1%$。