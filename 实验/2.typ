#set text(lang: "zh", font: "Noto Serif CJK SC")
#show "。": "．"
#show heading: t => v(.2em) + t + v(.3em)

= 二、变压器实验

== (一) 单相变压器“电压比 $K$”的实验测定

// + 实验开始前，应首先使“实验电源”的输出电压为零即调节“三相交流调压器”，逆时针拧到底，使其指示为0V。
- “实验电源”由“三相隔离调压器”的 $V_0$、$N_0$ 端接至受试变压器T(DP07)的高压线圈（$A$-$B$ 端），低压线圈（$A 1$-$A 2$端）开路。
// + 经实验老师检查无误后，按照【上电流程】操作主控实验屏幕，接通“实验电源”。
// + 缓慢调节“实验电源”的输出即三相交流调压器的旋钮，使其电压分别为受试变压器T一次侧额定电压（220 V）的 30%、40%、50% 左右。
- 用交流电压表分三次读取受试变压器T的低压线圈电压和高压线圈电压，录于@ktable。
// + 测试完毕，调节“实验电源”使其输出为零，并切断交流主接触器KM（按下停止按钮）。
- 按@ktable 数据，取三次 $K$ 值平均值，得电压比 $K=(K_1 + K_2 + K_3)/3$，录于@ktable。

220 V 的 30%、40%、50% 分别为 66 V、88 V、110 V。

#figure(
  caption: [变压器电压比 $K$ 的测定],
  table(
    columns: 4,
    table.header(
      [序号],
      $U_(A B) "/V"$,
      $U_(A 1 A 2) "/V"$,
      [变比 $K = U_(A B) / U_(A 1 A 2)$],
    ),

    $1$, $66$, $40$, $1.650$,
    $2$, $88$, $53$, $1.660$,
    $3$, $110$, $66$, $1.667$,
  ),
)<ktable>

取三次 $K$ 值平均值，得电压比 $K=(K_1 + K_2 + K_3)/3 = 1.659$．

== (二) 单相变压器的空载实验
// “单相变压器”的空载测试电路如图2-2所示。图中，受试变压器T (DP07)的高压线圈施加“实验电源”，即“实验电源”的{\ V}_0、N_{0\ }端接入变压器T(DP07)的高压线圈(A-B端)，低压线圈开路。变压器空载电流I0\approx(2.5%～10%)  ，依此选择交流电流表和功率表的电流量程。注意：空载电流\ I0很小，建议使用万用表交流毫安档测量（200mA档）。
// 1．按图2-2接线，经检查无误后，接通“实验电源”。(主电源接通前务必将“实验电源”调至输出电压最小或为零，以免电流表、功率表的电流线圈在继电器闭合时，因电流冲击而损坏。)
//  图2－2 “空载”测试电路

// 图2-3 空载特性曲线
// 2．调节“实验电源”的输出，使受试变压器T 的一次侧电压( )达到\ 240 V。
// 3．逐次降低电压，依次测量空载电压U_0( )、空载电流{\ I}_0、空载损耗\ P_0。在空载电压U0=(1.1～0.5) 范围内，读取6～7组数据(包括U_0= 点，在该点附近测量间隔应密一些)，测量结果录于表2-2。

#figure(
  caption: [单相变压器的空载实验],
  table(
    columns: 8,
    [$U_0$ (V)], $240$, $230$, $220$, $210$, $180$, $150$, $120$,
    [$I_0$ (mA)], $29.37$, $27.78$, $26.26$, $25.18$, $22.28$, $19.80$, $18.02$,
    [$P_0$ (W)], $4.92$, $4.51$, $4.15$, $3.81$, $2.90$, $2.13$, $1.44$,
  ),
)<table2>

#figure(
  image("dist/2-1.svg", width: 90%),
  caption: "变压器的空载电流特性和空载损耗特性曲线",
)

- 实验电源的$V_0$、$N_0$端接入变压器T的高压线圈($A$-$B$端)，低压线圈开路。变压器空载电流$I_0 approx (2.5% \~ 10%) I_"NOM"$，依此选择交流电流表和功率表的电流量程。空载电流$I_0$很小，使用万用表交流毫安档测量（200 mA档）。
- 调节实验电源的输出，使受试变压器T的一次侧电压 $U_0$ 达到 $240 V$。
- 逐次降低电压，依次测量空载电压 $U_0$、空载电流 $I_0$、空载损耗 $P_0$。在空载电压 $U_0=(1.1～0.5)$ 范围内，读取6～7组数据(包括 $U_0$= 点，在该点附近测量间隔应密一些)，测量结果录于@table2。

== (三) 单相变压器的短路实验

调节实验电源的输出，缓慢增加电压，使短路电流 $I_K$ 上升到 $1.1I_N$。在短路电流 $I_K=(1.1 "~" 0.5)I_N$ 的范围内，依次测量短路功率 $P_K$、短路电压 $U_K$ 及短路电流 $I_K$ 共4～5组数据(包括 $I_N$)，测量结果记录于@table2。

#figure(
  table(
    columns: 8,
    [$U_0$ (V)], $240$, $230$, $220$, $210$, $180$, $150$, $120$,
    [$I_0$ (mA)], $29.37$, $27.78$, $26.26$, $25.18$, $22.28$, $19.80$, $18.02$,
    [$P_0$ (W)], $4.92$, $4.51$, $4.15$, $3.81$, $2.90$, $2.13$, $1.44$,
  ),
)

#figure(
  image("dist/2-2.svg"),
  caption: "变压器的短路电流特性和短路损耗特性曲线",
)

== (四) 单相变压器的负载实验

从负载电流 $I_2=0.5I_N$ 开始，减小负载（增大电阻 $W_2$ 的值），逐次降低变压器的负载电流 $I_2$，直至 $I_2$ 降至电流最小，在此范围内，测取变压器的输出电压 $U_2$ 和负载电流 $I_2$ 以及功率 $W_2$。共测取数据6 \~ 8组，记录于@table4 中。

$ cos φ_2=1, U_1=U_2'=220 V $
#figure(
  caption: [单相变压器的负载实验],
  table(
    columns: 4,
    table.header(
      [序号],
      $U_2 "/V"$,
      $I_2 "/A"$,
      $W_2 "/W"$,
    ),

    $1$, $35$, $0.75$, $9.89$,
    $2$, $35$, $0.65$, $8.65$,
    $3$, $35$, $0.6$, $8.18$,
    $4$, $35$, $0.55$, $7.34$,
    $5$, $36$, $0.5$, $6.81$,
    $6$, $36$, $0.45$, $6.09$,
    $7$, $36$, $0.4$, $5.54$,
    $8$, $37$, $0.35$, $4.86$,
  ),
)<table4>

== 思考题

+ *为什么要始终强调，在单相变压器实验测试前，应首先使“实验电源”的输出电压为零，测试开始时再缓慢升压？*

  当继电器闭合时，变压器的短路状态会导致电源电压直接施加在变压器的一次侧绕组上，由于绕组电阻很小，会产生非常大的短路电流。电流表和功率表的电流线圈设计用于测量正常工作电流，无法承受如此大的短路电流冲击，因此可能导致线圈过热烧毁或永久性损坏。

+ *在单相变压器空载和短路实验中，各种仪表（电流、电压、功率）应怎样联接，才能使测量误差最小？*

  #figure(caption: "空载和短路实验的线路图", image("xfmr.svg"))

  - 空载实验时电流很小，所以电流表应先与变压器串联，随后再与功率表的电流线圈串联，以减小电压表的内阻对电流测量的影响。
  - 短路实验时电流很大，为避免电流表的内阻对电压测量的影响，电压表应先与变压器并联，随后再与功率表的电压线圈并联，之后再与电流表串联。

+ *用实验方法如何测定变压器的铁损和铜耗？*（参考附录有关内容。）

  / 铁损: 空载实验中副边可看作断路，因此可将将电路简化为励磁支路，铁损与励磁电阻成正比。空载实验时测得的功率即为铁损。
  / 铜耗: 短路实验中副边可看作短路，因此励磁支路被短路，铜耗即为短路电阻。因此负载实验时测得的功率即为铜耗。

+ 变压器空载和短路时应注意哪些问题？一般实验电源应接在低压侧还是高压侧比较合适？为什么？

  - 空载实验电流较小，应使用万用表交流毫安档测量。
  - 做短路实验时需快速完成，避免短路时线圈温升增加导致变压器损坏，及导致参数误差增大。
  - 一般实验电源应接在高压侧，对负载侧电压调节更精确。
