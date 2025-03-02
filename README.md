# iOS-Design-Patterns

![](https://blog-andy0570-1256077835.cos.ap-shanghai.myqcloud.com/site_Images/054933.png)




## 设计模式的定义

> 在软件工程中，软件设计模式是软件设计中给定上下文中常见问题的通用可重用解决方案。它不是可以直接转换为源代码或机器代码的完成设计。它是如何解决可在许多不同情况下使用的问题的描述或模板。
>
> ——维基百科



在软件开发领域中，设计模式是一个对象或类的设计模版，用于解决特定领域经常发生的问题。

设计模式是**通过定制来解决特定场景下一般设计问题的类和相互通信的对象**的描述。

简而言之，设计模式是**根据特定场景下的问题而定制的解决方案**。



## 构建可复用、可维护的面向对象应用程序的原则

* 单一职责原则（SRP）：就一个类而言，应该仅有一个引起它变化的原因。 
* 开放-封闭原则（OCP）：是说软件实体（类、模块、函数等等）应该可以拓展，但是不可修改。
* 依赖倒转原则（DIP）：
  *  高层模块不应该依赖低层模块，两个都应该依赖抽象；
  *  抽象不应该依赖细节，细节应该依赖抽象。 
* 里氏代换原则（LSP）：子类型必须能够替换掉它们的父类型。 
* 迪米特法则（LOD）：如果两个类不必彼此直接通信，那么这两个类就不应当发生直接的相互作用。如果其中一个类需要调用另一个类的某一个方法的话，可以通过第三者转发这个调用。 
* 合成/聚合复用原则（CARP）：尽量使用合成/聚合，尽量不要使用类继承。



## 21 种设计模式的 8 个功能部分

### 一、对象创建
* 原型模式（Prototype），用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的对象。 
* 工厂方法模式（Factory Method），定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到其子类。 
* 抽象工厂模式（Abstract Factory），提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类。 
* 生成器模式（Builder），将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。 
* 单例模式（Singleton），保证一个类仅有一个实例，并提供一个访问它的全局访问点。 

### 二、接口适配
*  适配器模式（Adapter），将一个类的接口转换成客户希望的另外一个接口。Adapter 模式使得原本由于接口不兼容而不能一起工作的那些类可以一起工作。 
* 桥接模式（Bridge），将抽象部分与它的实现部分分离，使它们都可以独立地变化。
* 外观模式（Facade），为子系统中的一组接口提供一个一致的界面，此模式定义了一个高层接口，这个接口使得这一子系统更加容易使用。 

### 三、对象去耦
* 中介者模式（Mediator），用一个中介对象来封装一系列的对象交互。中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。
* 观察者模式（Observer），定义了一种一对多的依赖关系，让多个观察者对象同时监听某一个主题对象。这个主题对象在状态发生变化时，会通知所有观察者对象，使它们能够自动更新自己。

### 四、抽象集合
* 组合模式（Composite），将对象组合成树形结构以表示‘部分-整体’的层次结构。组合模式使得用户对单个对象和组合对象的使用具有一致性。 
* 迭代器模式（Iterator），提供一种方法顺序访问一个聚合对象中各个元素，而又不暴露该对象的内部表示。 

### 五、行为扩展
* 访问者模式（Visitor），表示一个作用于某对象结构中的各元素的操作。它使你可以在不改变各元素的类的前提下定义作用于这些元素的新操作。
* 装饰模式（Decorator），动态地给一个对象添加一些额外的职责，就增加功能来说，装饰模式比生成子类更为灵活。 
* 职责链模式（Chain of Responsibility），使多个对象都有机会处理请求，从而避免请求的发送者和接收者之间的耦合关系。将这个对象连成一条链，并沿着这条链传递该请求，直到有一个对象处理它为止。 

### 六、算法封装
* 模板方法模式（Template Method），定义一个操作中的算法的骨架，而将一些步骤延迟到子类中。模板方法使得子类可以不改变一个算法的结构即可重定义该算法的某些特定步骤。 
* 策略模式（Strategy），它定义了算法家族，分别封装起来，让它们之间可以互相替换，此模式让算法的变化，不会影响到使用算法的客户。 
* 命令模式（Command），将一个请求封装为一个对象，从而使你可用不同的请求对客户进行参数化；对请求排队或记录请求日志，以及支持可撤销的操作。 

### 七、性能与对象访问
* 享元模式（Flyweight），运用共享技术有效地支持大量细粒度的对象。 
* 代理模式（Proxy），为其他对象提供一种代理以控制对这个对象的访问。 

### 八、对象状态
* 备忘录模式（Memento），在不破坏封装性的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。这样以后就可将该对象恢复到原先保存的状态。 
* 状态模式（State），当一个对象的内在状态改变时允许改变其行为，这个对象看起来像是改变了其类。
* 解释器模式（Interpreter），给定一个语言，定义它的文法的一种表示，并定义一个解释器，这个解释器使用该表示来解释语言中的句子。 



## 设计模式参考

* [Amazon: Head First 设计模式](https://www.amazon.cn/Head-First%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F-%E5%BC%97%E9%87%8C%E6%9B%BC/dp/B0011FBU34/ref=sr_1_1?ie=UTF8&qid=1464418055&sr=8-1&keywords=head+first)
* [Apple: Cocoa Design Patterns](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/CocoaFundamentals/CocoaDesignPatterns/CocoaDesignPatterns.html#//apple_ref/doc/uid/TP40002974-CH6-SW6)
* [Design patterns for humans 中文版](https://www.guanguans.cn/design-patterns-for-humans-cn/#-prototype)
* [设计模式](https://refactoringguru.cn/design-patterns)
* [图说设计模式](https://design-patterns.readthedocs.io/zh_CN/latest/index.html#)
* [史上最全设计模式导学目录（完整版）](https://blog.csdn.net/lovelion/article/details/17517213)
* [GitHub: Trip-to-iOS-Design-Patterns](https://github.com/skyming/Trip-to-iOS-Design-Patterns)
* [GitHub: Design Patterns implemented in Swift 5.0](https://github.com/ochococo/Design-Patterns-In-Swift)
* [iOS 设计模式详解 @Swift](https://juejin.im/post/5b827f0df265da43412875dd)
* [设计模式六大原则](https://www.jianshu.com/p/285dbd8cbd2a)
* [关于 23 种设计模式的有趣见解](https://www.hicss.net/23-design-patterns/)
* [iOS 中的设计模式 开篇](https://a1049145827.github.io/2018/03/28/iOS中的设计模式-开篇/)
* [**Factory Method and Abstract Factory in Swift and iOS Universe**](https://betterprogramming.pub/factory-method-and-abstract-factory-in-swift-and-ios-universe-47c716667287)
* [Using the factory pattern to avoid shared state in Swift](https://www.swiftbysundell.com/articles/using-the-factory-pattern-to-avoid-shared-state-in-swift/)




## 架构参考

> 不管我们决定使用什么样的架构，最终的目标都是使测试变得更简单。因此写代码之前我们要根据这一原则进行思考。我们强调如何直观的进行责任分离。此外，保持这种思维模式，架构的设计就会变得很清晰、合理，我们就不会再陷入琐碎的细节。



* [awesome-ios-architecture](https://github.com/onmyway133/awesome-ios-architecture)

### MVC

* [A Better MVC](https://davedelong.com/blog/2017/11/06/a-better-mvc-part-1-the-problems/)



### MVVM

* [Design Patterns by Tutorials: MVVM @raywenderlich](https://www.raywenderlich.com/192471/design-patterns-by-tutorials-mvvm)
* [OBJC中国：MVVM 介绍](https://www.objccn.io/issue-13-1/)
* :heart:[MVVMFramework](https://github.com/lovemo/MVVMFramework)
* [EasyIOS](https://github.com/zhuchaowe/EasyIOS) - A new generation of development framework based on Model-View-ViewModel



### 其它

* [ObjC 中国期刊 - 架构](https://objccn.io/issues/)
* [iOS Architecture Patterns Demystifying MVC, MVP, MVVM and VIPER](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52)
* [iOS 架构模式 - 简述 MVC, MVP, MVVM 和 VIPER (译)](https://segmentfault.com/a/1190000004680605)
* [PPT: 5 iOS Architectures in 5 minutes](http://slides.com/borlov/arch/fullscreen#/)
* [Blurring the Lines Between MVVM and VIPER](https://medium.com/developermind/blurring-the-lines-between-mvvm-and-viper-dcb3dc9815ac)
* [iOS 应用架构谈 组件化方案](https://casatwy.com/iOS-Modulization.html)
* [iOS应用架构现状分析](http://mrpeak.cn/blog/ios-arch/)
* [iOS 架构模式——MV(X) 的理解与实战](http://mp.weixin.qq.com/s?__biz=MjM5OTM0MzIwMQ==&mid=2652559742&idx=1&sn=3d07af5249de773bd7553ba2b0a2e642&chksm=bcd29c708ba51566d51ec2004142a70d17cfebb49ac7ff9037339bba41a212c43919c43c3716&mpshare=1&scene=1&srcid=0414so4GOyUBEVNGRMYe444d%23rd)
* [iOS 架构补完计划 -- 浅谈 MVC 及其衍生架构模式 (附简易图解)](https://www.jianshu.com/p/004075a47ed6#comments)
* [medium: iOS Architecture Patterns](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52)
* [唯一可行的 iOS 架构](https://juejin.im/post/5e435345518825493c7b4b43)
* [怎么面试架构师](http://www.cocoachina.com/programmer/20150617/12170.html)
* [[译] iOS app 实用架构](https://xiaozhuanlan.com/topic/5718043296)


### InfoQ - iOS应用架构谈

* [iOS应用架构谈（一）：架构设计的方法论](http://casatwy.com/iosying-yong-jia-gou-tan-kai-pian.html)
* [iOS应用架构谈（二）：View层的组织和调用方案](http://casatwy.com/iosying-yong-jia-gou-tan-viewceng-de-zu-zhi-he-diao-yong-fang-an.html)
* [iOS应用架构谈（三）：网络层设计方案](http://casatwy.com/iosying-yong-jia-gou-tan-wang-luo-ceng-she-ji-fang-an.html)
* [iOS应用架构谈（四）：本地持久化方案及动态部署](http://casatwy.com/iosying-yong-jia-gou-tan-ben-di-chi-jiu-hua-fang-an-ji-dong-tai-bu-shu.html)
* [iOS应用架构谈（五）：组件化方案](http://casatwy.com/iOS-Modulization.html)


### App 架构设计实践
* [饿了么移动APP的架构演进](https://www.sdk.cn/news/2023)
* [滴滴iOS客户端的架构演变之路](http://www.infoq.com/cn/news/2016/03/lixianhui-interview)
* [携程移动App架构优化之旅](https://mp.weixin.qq.com/s?__biz=MjM5MDE0Mjc4MA==&mid=403412672&idx=1&sn=2cceb873ee4640830aad3261ae177df5&scene=0&key=710a5d99946419d9ba63d1d480eb3f0c2d49be9d244f34e460226b2f4caaa02565fc4d16af8f64ca79085f4db276e89f&ascene=0&uin=MjY1NTg0NzMyMQ%3D%3D&devicetype=iMac+MacBookPro11%2C4+OSX+OSX+10.11.4+build(15E65)&version=11020201&pass_ticket=JxdNVNrS%2BerOsvJdjWQGHAqgDkV2%2FmL9OHAETsCT%2Bvp0%2B%2FLiXasOwpgYIsgQQn8O)[PPT](http://www.stuq.org/ppt/frame_show/659/4c79d4c7eb2061f8790b5e7e6fe42703#/1)
* [新浪微博iOS客户端架构与优化之路](http://mp.weixin.qq.com/s?__biz=MzA3ODg4MDk0Ng==&mid=2651112273&idx=1&sn=893a66a04e541a99b7bc4d7cf227e2f7#rd)
* [Weex详解：移动端高性能动态化方案](http://mp.weixin.qq.com/s?__biz=MzA3ODg4MDk0Ng==&mid=2651112231&idx=1&sn=4578ff1009ee774093c45a3d8c19dd58#rd)
* [覃超：Facebook iOS App技术演化十年之路](http://www.infoq.com/cn/articles/evolution-of-facebook-ios-app-ten-years-technology)
* [天弘基金移动App客户端架构优化之路](http://blog.csdn.net/yaoyu/article/details/70184539)
* [Service Oriented 的 iOS 应用架构](http://tech.glowing.com/cn/service-oriented-ios-architecture/)
* [猿题库 iOS 客户端架构设计](http://gracelancy.com/blog/2016/01/06/ape-ios-arch-design/)
* [QCon旧金山演讲总结：阿里无线技术架构演进](http://www.infoq.com/cn/articles/alibaba-mobile-infrastructure)
* [斗米客户端的架构思想](http://blog.linzihong.com/2017/07/27/framework/)


## 组件化参考

> 组件是比模块更小的功能单位，不具备业务属性，只处理基础通用的问题，类似于工具箱。比如我们给 `NSString` 写的 `Category` 提供 base64 编码解码功能，给 `NSDate` 写的` Category` 做日期格式化等等。

> 模块较之组件粒度更大一些，另外最重要的区别是带有业务属性，和业务场景相关联。比如购物车模块，注册登录模块，支付模块等等，模块往往会对一些通用的组件产生依赖。

* [iOS 组件化方案](http://www.mrpeak.cn/blog/module/)
* [饿了么移动 APP 的架构演进](https://www.jianshu.com/p/2141fb0dc62c)
* [携程移动 App 架构优化之旅](http://www.infoq.com/cn/articles/ctrip-app-architecture?utm_campaign=infoq_content&utm_source=infoq&utm_medium=feed&utm_term=global)
* [蜂鸟商家版 iOS 组件化 / 模块化实践总结](http://www.cocoachina.com/cms/wap.php?action=article&id=21967)
* [CocoaPods 公有库](https://www.jianshu.com/p/8111873cfaa9)
* [iOS 项目组件化搭建](https://www.jianshu.com/p/66b63f56b2d5) 私有库
* [蘑菇街 App 的组件化之路](http://limboy.me/tech/2016/03/10/mgj-components.html)
* [蘑菇街 App 的组件化之路·续](http://limboy.me/tech/2016/03/14/mgj-components-continued.html)
* [iOS 组件化方案探索](http://blog.cnbang.net/tech/3080/)
* [糯米移动组件架构演进之路](http://chuansong.me/n/320688951236)
* [滴滴的组件化实践与优化](http://www.infoq.com/cn/articles/xiaojukeji-component-practice-and-optimization)
* [豆瓣App的模块化实践](http://mp.weixin.qq.com/s?__biz=MzA3ODg4MDk0Ng==&mid=2651112821&idx=1&sn=2987ba2c9d68e3982e795d9eeb15f82b&chksm=844c6ca8b33be5be42e673ff2a9087628b0d9fab5e5a403d4bd346b134f4ffe110e423967c3e&scene=0#rd)
* [iOS App组件化开发实践](http://www.infoq.com/cn/articles/ios-app-component-development-practice)
* [58 同城 iOS 客户端组件化演变历程](http://mp.weixin.qq.com/s/PbOh-l0E4bD3HoKj0GzYWQ)
* [手机淘宝客户端架构探索实践](https://yq.aliyun.com/articles/129)
* [京东iOS客户端组件管理实践](http://www.infoq.com/cn/articles/jd-ios-component-management?utm_source=articles_about_mobile&utm_medium=link&utm_campaign=mobile)
* [iOS 组件化 —— 路由设计思路分析](https://www.jianshu.com/p/76da56b3bd55)
* [组件化架构漫谈](https://www.jianshu.com/p/67a6004f6930)


### IM架构梳理

* [IM 开发者社区](http://www.52im.net/forum.php?mod=collection&op=all)
* [IM架构梳理](http://blog.csdn.net/skymingst/article/details/49448717)
* [58到家消息系统设计与开发实践](https://mp.weixin.qq.com/s?__biz=MzAwNjQwNzU2NQ==&mid=402441278&idx=1&sn=af82781e3e6b694d82ac8454dbe3ae67&scene=0&key=710a5d99946419d9ebeb6a76103f5b3c9a2a96d61dd040e7eaacca508005e842656a35d9b9664ec603be12ce0c3f25c7&ascene=0&uin=MjY1NTg0NzMyMQ%3D%3D&devicetype=iMac+MacBookPro11%2C4+OSX+OSX+10.11.3+build(15D21)&version=11020201&pass_ticket=TlXzGHRFhCo4eytB1hbIW0fFZq50RM%2BdZKQ7eajgE1C8Lc0aRV7IIgbSt6S4h5eZ)
* [im协议设计选型（上）](https://mp.weixin.qq.com/s?__biz=MjM5ODYxMDA5OQ==&mid=205775353&idx=1&sn=ecc1f32ec9585f2c7672a27dfbc726ca&scene=1&srcid=0317WNL1c9K3dhx6rqsrhXL5&key=710a5d99946419d970963f96a056ab527d7e0a5ec70e2094cbb32922797076e77c9282e8ead417792c53ca5798beac51&ascene=0&uin=MjY1NTg0NzMyMQ%3D%3D&devicetype=iMac+MacBookPro11%2C4+OSX+OSX+10.11.3+build(15D21)&version=11020201&pass_ticket=TlXzGHRFhCo4eytB1hbIW0fFZq50RM%2BdZKQ7eajgE1C8Lc0aRV7IIgbSt6S4h5eZ)
* [webim如何保证消息的可靠投递](https://mp.weixin.qq.com/s?__biz=MjM5ODYxMDA5OQ==&mid=205034544&idx=1&sn=26bbbf4a49ae6b6c4b8c3cba7f79764f&scene=1&srcid=0317zhrXNGEHs2T4xAjbCoeO&key=710a5d99946419d9f10782b19962c97c88912b052aadce02ef6e5d82a2b2814aa055d499a22072c468f7c1d3f085cc8a&ascene=0&uin=MjY1NTg0NzMyMQ%3D%3D&devicetype=iMac+MacBookPro11%2C4+OSX+OSX+10.11.3+build(15D21)&version=11020201&pass_ticket=TlXzGHRFhCo4eytB1hbIW0fFZq50RM%2BdZKQ7eajgE1C8Lc0aRV7IIgbSt6S4h5eZ)
* [webim如何用轮询保证消息绝对实时](https://mp.weixin.qq.com/s?__biz=MjM5ODYxMDA5OQ==&mid=205001346&idx=1&sn=fd87cc010bf4548589c9fabea80c4cad&scene=1&srcid=0317oohatukhxTbBwWHKP6cU&key=710a5d99946419d9708e602d966c3a50e34f09ca848c5b3bf380b79bc6b34ad6e84062ed43a22333531a6525cc8fa07d&ascene=0&uin=MjY1NTg0NzMyMQ%3D%3D&devicetype=iMac+MacBookPro11%2C4+OSX+OSX+10.11.3+build(15D21)&version=11020201&pass_ticket=TlXzGHRFhCo4eytB1hbIW0fFZq50RM%2BdZKQ7eajgE1C8Lc0aRV7IIgbSt6S4h5eZ)
* [一套简洁的即时通信 (IM) 系统](https://mp.weixin.qq.com/s?__biz=MjM5MzA0ODkyMA==&mid=405991976&idx=1&sn=4bf8982f2dc2ea2df62c312e4fe508f4&scene=0&key=710a5d99946419d98e3fd2dc46318f0db3ec6994c949bcf1ed7aa9792993c67eb1388d95f0019d30c30a407b14211064&ascene=0&uin=MjY1NTg0NzMyMQ%3D%3D&devicetype=iMac+MacBookPro11%2C4+OSX+OSX+10.11.3+build(15D21)&version=11020201&pass_ticket=TlXzGHRFhCo4eytB1hbIW0fFZq50RM%2BdZKQ7eajgE1C8Lc0aRV7IIgbSt6S4h5eZ)
* [微博与im消息实现对比[随想]](https://mp.weixin.qq.com/s?__biz=MjM5ODYxMDA5OQ==&mid=205117508&idx=1&sn=71eecf04581e68deee4a44f7786309f5&scene=1&srcid=0317jpSQhhxbYvM2Kz6vlhOK&key=710a5d99946419d9c798c52d8b5dd4f67c1c4b144bb07217906e72260d353ac92559a0451d7548f74cc70ca9e0223637&ascene=0&uin=MjY1NTg0NzMyMQ%3D%3D&devicetype=iMac+MacBookPro11%2C4+OSX+OSX+10.11.3+build(15D21)&version=11020201&pass_ticket=TlXzGHRFhCo4eytB1hbIW0fFZq50RM%2BdZKQ7eajgE1C8Lc0aRV7IIgbSt6S4h5eZ)

### 实战学习
最后推荐些可以帮助理解实战的开源项目：

* [V2EX - V2EX iOS客户端，已上线项目](https://github.com/singro/v2ex)
* [Firox-IOS - Firox iOS客户端，用Swift写的](https://github.com/mozilla/firefox-ios)
* [Telegram - 一个非常牛XXX的开源社交项目](https://github.com/peter-iakovlev/Telegram)

