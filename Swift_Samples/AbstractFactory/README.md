参考：<https://github.com/pro648/tips/wiki/%E5%B7%A5%E5%8E%82%E6%A8%A1%E5%BC%8F-Factory-Pattern>



## 工厂模式（factory design pattern）总结

* 工厂模式的目标是将创建对象的逻辑隔离到自身构造中。
* 如果您拥有一组相关的 product，或在提供更多信息前（例如，接收到 response，或用户输入内容）无法创建对象，则工厂模式非常有用。
* 工厂模式添加了一层抽象来创建对象，能够减少重复代码。

通过工厂模式可以再次减少视图控制器代码，遵守 Open/closed principle，降低耦合性。

## 工厂模式&策略模式

[工厂模式 Factory Pattern](https://github.com/pro648/tips/wiki/%E5%B7%A5%E5%8E%82%E6%A8%A1%E5%BC%8F-Factory-Pattern) 和 [策略模式 Strategy Pattern](https://github.com/pro648/tips/wiki/策略模式-Strategy-Pattern) 有些相似，区别如下：

* Factory Pattern：是 creational pattern，用于**创建特定类型对象**。例如，创建狗、猫、老虎等不同类型动物。
* Strategy Pattern：是 behavioral pattern，以**特定方式执行操作**。例如，执行走、跑，跳等动作。

工厂模式和策略模式可以组合使用。例如，有一个创建 business 对象的工厂模式，其根据持久化策略不同选择不同的工厂模式。如果数据保存到本地 XML ，使用 A 策略；如果数据保存到远程数据库，使用 B 策略。

最为重要的是了解使用设计模式的动机，否则就像在木工店里用锤子切割木材。也就是说，在不适当的上下文中使用设计模式就是在反设计模式，因此请确保了解设计模式的动机。