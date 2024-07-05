#set text(lang: "zh", font: "Noto Serif CJK SC")
#show "。": "．"

= 实验五 交流伺服电动机实验

伺服电动机在⾃动控制系统中作为执⾏元件，⼜称为执⾏电动机，将输⼊的控制电压信号变为相应的⻆位移或⻆速度。伺服电动机运⾏状态由控制信号控制，施加控制信号应当⽴即旋转，去掉控制电压应当⽴即停转，转速⾼低与控制信号成正⽐。

=== 实验步骤和机械特性记录

==== 1. 实测交流伺服电机 $U_f = 220V$, $U_c= 1 $（即 $U_c = U_N = 220V$）， $C = 3 F $时的机械特性

- 左侧空气开关闭合，面板交流开关闭合。
- 调节变压器 T2 使 $U_c = U_upright(N) = 220V$。
- 调节智能负载控制器给定，电机从空载至堵转过程中，将力矩 $T$
  及电机转速记录于表 5-1 中。
- 测试完毕，及时断开所有电源开关。

#figure(
  caption: "机械特性",
  align(center)[#table(
      columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
      table.header([序号], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12]),
      table.hline(),
      [$T (
            N dot.op m
          )$], [0.02], [0.04], [0.06], [0.08], [0.1], [0.11], [0.12], [0.13], [0.135], [0.14], [0.15], [0.155],
      [$n (r \/ m i n)$], [1922], [1888], [1817], [1715], [1462], [1372], [1322], [1205], [1200], [1166], [970], [0],
    )],
)

==== 2. 实测交流伺服电机 $U_f = 220V $, $U_c = 1 $（即 $U_c = U_N = 220V $）， $C = 1.5 F $时的机械特性

- 左侧空气开关闭合，面板交流开关闭合。
- 调节单相调压器 T2 使 $U_c = U_N = 220V $。
- 调节智能负载控制器给定，电机从空载至堵转过程中，将力矩 $T $
  及电机转速记录于表 5-2 中。
- 测试完毕，及时断开所有电源开关。

#figure(
  align(center)[#table(
      columns: (auto, 8.22%, 8.22%, 8.22%, 8.22%, 8.22%, 8.22%, 8.22%, 8.22%, 8.22%),
      table.header([序号], [1], [2], [3], [4], [5], [6], [7], [8], [9]),
      table.hline(),
      [$T (N dot.op m)$], [0.01], [0.02], [0.03], [0.04], [0.05], [0.06], [0.07], [0.08], [0.085],
      [$n (r \/ m i n)$], [1663], [1629], [1597], [1518], [1471], [1300], [1054], [830], [0],
    )],
  caption: "机械特性",
)

==== 3. 实测交流伺服电机 $U_f =220V$, $U_c = 0.75$ （即 $U_c = 0.75U_N = 165V$），$C = 3 F$ 时的机械特性

- 调节单相交流调压器使 $U_c = 0.75U_N = 165V$。
- 重复上面实验，将数据记录于表 6-3 中。
- 测试完毕，及时断开所有电源开关。

#figure(
  caption: "机械特性",

  align(center)[#table(
      columns: (auto, 7.59%, 7.59%, 7.59%, 7.59%, 7.59%, 7.59%, 7.59%, 7.59%, 7.59%),
      table.header([序号], [1], [2], [3], [4], [5], [6], [7], [8], [9]),
      table.hline(),
      [$T (upright(N dot.op m))$], [0.02], [0.04], [0.06], [0.08], [0.09], [0.1], [0.11], [0.12], [0.13],
      [$n (upright(r \/ m i n))$], [1861], [1815], [1586], [1327], [1233], [1179], [1103], [946], [0],
    )],
)

==== 4. 实验方法调整堵转状态下的旋转磁场

+ 断开主电源和左侧的空气开关，按照图 5-1 连接示波器，示波器两探头地线应接图中 N 线（也是变压器的 NO）。X 踪和 Y 踪幅值量程一致，并设在迭加状态。初始状态时，电容 $C $选择为 0。
+ 合上交流主电源， $U_f = 220V$，再调节交流单相调压器 T2 使 $U_c = 220V$，调节智能负载控制器给定，使电机堵转。
+ 逐步增大可变电容 $C $的容值，观察 $I_f $与 $I_c$（通过电流表 A1 和 A2 测量）接近过程中示波器轨迹的变化。需要确认调整时 $U_f$ 等于 $U_c$。

#figure(
  align(center)[#table(
      columns: 8,
      align: (auto, auto, auto, auto, auto, auto, auto, auto),
      table.header([$C (mu F)$], [0.47], [1], [1.5], [2], [2.2], [2.3], [2.4]),
      table.hline(),
      [$I_f (A)$], [0.04], [0.07], [0.11], [0.18], [0.20], [0.22], [0.24],
      [$I_c (A)$], [0.28], [0.28], [0.29], [0.30], [0.31], [0.32], [0.32],
    )],
)

== 实验报告

+ 作交流伺服电动机幅值—相位控制时的机械特性。
  #figure(caption: "机械特性", image("dist/5.svg"))
+ 分析实验数据及实验过程中发⽣的现象。

  励磁回路串联电容，电磁转矩表达式十分复杂。根据实验数据，电磁转距随转速增加，先增大再减小。$C$ 越大，转矩越大；$U_C$ 越大，转矩越小。

== 思考题

+ 分析⽆“⾃转”现象的原因？怎样消除“⾃转”现象？

  阻转矩大于单相运行时的最大转矩。可以通过提高转子电阻来消除自转现象。

+ 幅值-相位控制的交流伺服电机，什么条件下电机⽓隙磁场为圆形磁场？其理想空载转速是多⼤？

  当激磁绕组与控制绕组所产生的磁势幅值相等，且两绕组电流相位差为 90° 时，电机的气隙磁场为圆形磁场。此时，电机的理想空载转速为同步转速 $n_1$。
