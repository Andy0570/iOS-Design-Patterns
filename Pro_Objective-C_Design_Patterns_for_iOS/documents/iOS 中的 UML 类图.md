注：本文参考 《Pro Objective-C Design Patterns for iOS》

## 类图

类图用来说明类、类之间的静态关系和类的结构。在 Objective-C 中，应用程序可以定义协议、（抽象）类以及范畴。



### 协议、抽象类、具体类和范畴

* 用矩形框表示类实体，在上部用粗体标出名字，下部是操作的名字。
* 协议名用尖括号括起来。
* 协议和抽象类用粗斜体表示。
* 协议的标题栏背景为粉色，而其他类实体的标题栏背景颜色为浅紫色。

![协议&抽象类&具体类](https://blog-andy0570-1256077835.cos.ap-shanghai.myqcloud.com/site_Images/052619.png)

左边为具有抽象操作的协议（Protocol）；中间为具有抽象操作和具体操作的抽象类；右边为具体类，带有具体属性和具体操作。

范畴（Category）是 Objective-C 语言独有的特性，在 UML 中没有规范的图示法。范畴是对类的扩展，但又不是该类的子类。本文使用如下所示的扩展类框图的图示法来表示范畴：

![范畴](https://blog-andy0570-1256077835.cos.ap-shanghai.myqcloud.com/site_Images/054005.png)

原来的类框图在左边，有一个类似的矩形框附加到其上。范畴名用括号括起来。

在类图或对象图中会有一些设计中的其他角色。这些角色可以是抽象实体（如客户端），或者设计范围之内或者之外的其他类。灰色的矩形框（白色背景）表示交互中的**隐式角色**，但对所讨论的问题来说并不重要。相反，**参与者类**会用黑色实线的矩形框（淡紫色背景）来表示。

![Client](https://blog-andy0570-1256077835.cos.ap-shanghai.myqcloud.com/site_Images/054633.png)



### 实例化

用带有箭头的虚线来表示一个类创建了另一个类（创建关系）。箭头指向被实例化的类。

![一个类实例化另一个类](https://blog-andy0570-1256077835.cos.ap-shanghai.myqcloud.com/site_Images/064358.png)

### 继承

**类继承**的 OMT 图示法用空心三角形将子类连接到其父类。下图显示了这种关系，`ConcreteClass` 是具体子类，代表继承的箭头指向其父类 `AbstractClass`。

对于**接口继承**（在 Objective-C 中代表某个类遵守某个 Protocol 协议），用类似的箭头来表示这种关系，只是箭头后面的是虚线。

![继承关系](https://blog-andy0570-1256077835.cos.ap-shanghai.myqcloud.com/site_Images/Inheritance.png)

左边，具体类继承抽象类，体现了**类继承**的关系。

右边，一个类子类型化（符合、遵守）一个协议，体现了**接口继承**关系。



### 相识

使用从一个类指向另一个类的箭头来表示**相识（acquaintance）关系**。这种关系与另一个种叫做聚合的关系对于对象组合原则至关重要。下图显示了这种关系，`ConcreteClass` 拥有对 `AnotherClass` 的引用，但不“拥有” `AnotherClass` 对象的实体，而且引用也可以被其他对象分享。简单地说，`ConcreteClass` 认识 `AnotherClass`。

![相识关系](https://blog-andy0570-1256077835.cos.ap-shanghai.myqcloud.com/site_Images/064420.png)

图中，`ConcreteClass` 与 `AnotherClass` 构成相识关系。

### 聚合

跟相识关系一样，使用箭头来表示对另一个对象的引用，只是在箭头的根部有一个菱形。但是这种引用关系有些不同。下图显示了 `ConcreteClass` 与 `AnotherClass` 有**聚合（aggregation）关系**。`AnotherClass` 是 `ConcreteClass` 的实例变量， `ConcreteClass` 和 `AnotherClass` 构成聚合体。而聚合体由 `ConcreteClass` 来表示。`AnotherClass` 不是聚合体。图中还显示了引用的另一个属性。这里使用双头箭头来表示“多于一个”。因此 `ConcreteClass` 包含有 `AnotherClass` 的多个实例，即 `_instanceVariable`。

![](https://blog-andy0570-1256077835.cos.ap-shanghai.myqcloud.com/site_Images/Aggregation-1.png)

图中，`ConcreteClass` 以对 `AnotherClass` 的多个引用形成聚合关系。



### 伪代码

有时候用伪代码简要记述某些操作的实现，可以更清楚地说明模式。伪代码注记的正文放在带卷角的矩形框中，如下图所示：

![伪代码](https://blog-andy0570-1256077835.cos.ap-shanghai.myqcloud.com/site_Images/064434.png)

## 对象图

对象图只用来表示对象间的关系。它表示了设计模式中各个对象之间如何相互联系。对象名使用 "aSomeClass" 的格式，这里 SomeClass 是对象的类。表示对象的图形与类图中用到的很相似。对象被放在一个矩形框中，矩形框有两部分，将对象名和它的对象引用分开。标题栏的背景也是浅紫色。根部为圆形的实心箭头指向被引用的其他对象。

![](https://blog-andy0570-1256077835.cos.ap-shanghai.myqcloud.com/site_Images/Object%20Diagram-1.png)

用带有圆形根部的箭头表示源自 aClass 对象的引用。
