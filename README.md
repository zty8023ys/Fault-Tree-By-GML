
# Fault-Tree-By-GML

自然语言生成可视化故障树, 切换对偶树, 分析路集与割集 Auto Generate Fault Tree From Human Language, Switch Dual Tree And Analyze Cut-set

# 实例输入

1. ROOT[A]\
  IF[B]AND[C]THEN[A]\
  IF[D]OR[E]OR[F]THEN[B]\
  IF[G]AND[H]AND[I]THEN[C]\
  END\
  ![image](https://github.com/zty8023ys/Fault-Tree-By-GML/raw/master/example/test1_map.png)
  ![image](https://github.com/zty8023ys/Fault-Tree-By-GML/raw/master/example/test1_cutset.png)

2. ROOT[A]\
  IF[B]OR[C]THEN[A]\
  IF[D]AND[E]THEN[B]\
  IF[b]AND[e]THEN[E]\
  IF[a]OR[c]THEN[D]\
  IF[b]AND[F]THEN[C]\
  IF[H]AND[G]THEN[F]\
  IF[e]AND[a]THEN[H]\
  IF[d]AND[c]THEN[G]\
  END\
  ![image](https://github.com/zty8023ys/Fault-Tree-By-GML/raw/master/example/test2_map.png)
  ![image](https://github.com/zty8023ys/Fault-Tree-By-GML/raw/master/example/test2_cutset.png)

