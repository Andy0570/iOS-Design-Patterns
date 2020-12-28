> 原文：[Design Patterns by Tutorials: MVVM](https://www.raywenderlich.com/34-design-patterns-by-tutorials-mvvm)

### MVVM设计模式

Model-View-ViewModel（简称 MVVM）是一种结构设计模式（structural design pattern），将对象分成三个不同的组：

1. Models：持有应用数据。通常为 struct 或 class。
2. Views：在屏幕上显示视觉元素和控件。通常为`UIView`的子类。
3. View models：将模型信息转换为可在视图中直接显示的值。通常为 class 类，因此可以作为引用传递。

![MVVMUML](https://raw.githubusercontent.com/wiki/pro648/tips/images/MVVMUML.png)

MVVM 和 Model-View-Controller（简称 MVC）很像。上面 MVVM UML 类图中包含视图控制器。也就是说，MVVM 模式包含 view controller，只是其作用被弱化了。

## 何时使用 MVVM 模式

当模型需要转换后才可以在视图显示时，使用 MVVM。例如，使用视图模型（view model）将 `Date` 转换为日期格式的 `String`，将十进制转换为货币格式的 `String` 等。

MVVM 模式与 MVC 模式并无冲突。如果没有 view model 部分，你可以将 model-to-view 转换代码放到控制器。但视图控制器已经做了像视图生命周期、通过 `IBAction` 处理视图回调等各种任务，低耦合变得难以实现。MVC 也就成为了 Massive View Controller。

<img src="https://koenig-media.raywenderlich.com/uploads/2018/04/MVC_Suitcase.png" style="zoom:50%;" />

如何避免过度使用视图控制器？可以在使用 MVC 模式之外，组合使用其他设计模式。Model-View-ViewModel 就是其中之一。



