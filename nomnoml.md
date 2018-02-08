### 使用nomnoml画图
http://www.nomnoml.com

代码化图表
{% nomnoml %}

#fill: #d5e7ee; #8ebff2

[<frame>Decorator pattern|
  [<abstract>Component||+ operation()]
  [Client] depends --> [Component]
  [Decorator|- next: Component]
  [Decorator] decorates -- [ConcreteComponent]
  [Component] <:- [Decorator]
  [Component] <:- [ConcreteComponent]
]  

{% endnomnoml %}

2018画个图

{% nomnoml %}
[<frame>2018学习计划|

  [技术学习]

  [技术学习] --> [学习技术并且应用]
  [技术学习] --> [阅读源代码]

  [学习技术并且应用] --> [openresty]
  [学习技术并且应用] --> [vue]
  [学习技术并且应用] --> [nodejs]


  [阅读源代码] --> [redis]
  [阅读源代码] --> [asdf]


]
{% endnomnoml %}