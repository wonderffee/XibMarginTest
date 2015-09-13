# UITableViewCell Autolayout margin在不同版本Xcode下表现迥异的问题

之前一直用Xcode6.1.1（6A2008a），最近升级到了Xcode6.4（6E35b），发现UI展示有些微妙的不同，一比较发现了一个margin差异问题，不知道是不是神坑。

简化代码起见，我自己写了这个小Demo来复现这个问题。

简单描述下：
Demo代码中XibTableViewCell定义了一个自定义UITableViewCell，用于XibTableViewController中。在XibTableViewCell的xib中，我增加了一个横条，设置其左边缘与右边缘都贴近边框，亦即边距为0px。采用的是右键drag拖线的方式设置autolayout约束, 左右边距的约束值实际为-8（因为我理解的默认的margin值为8）。

横条的约束如下图所示：

![Alt text](Image/constaints.png?raw=true "图1")

其中Leading约束的详情如下图所示：

![Alt text](Image/leadingDetail.png?raw=true "图2")

注意其中Second Item是Superview.Leading Margin，这是因为在Custom UITableViewCell中，”Constrain to margin“默认是勾选的。

在Xcode6.1.1下运行iPhone6模拟器，显示的效果如下图所示：

![Alt text](Image/xcode6.1.1.png?raw=true "图3")

在Xcode6.4下运行iPhone6模拟器，显示的效果如下图所示：

![Alt text](Image/xcode6.4.png?raw=true "图4")

注：换Xcode运行时，请注意先Clean项目并把模拟器的app删除掉，然后再重新编译运行。

可以看到，同样的代码在Xcode6.1.1运行是正常的，在Xcode6.4下左右边距莫名多了8px，看上去margin值应该为16px。不会是模拟器的问题，我用同一台iPhone6设备测试也是同样的问题。这到底是Xcode6.1.1的问题还是Xcode6.4的问题呢？

一直以来我都以为margin的默认值都为8px，即(8, 8, 8, 8)，但是搜了搜StackOverflow发现也有说16px，比如这个帖子[ios - View in UITabBarController has 16 pixel buffer - Stack Overflow](http://stackoverflow.com/questions/31481656/view-in-uitabbarcontroller-has-16-pixel-buffer)，那么到底是8px还是16px？

有装Xcode7的TX，可以试一下用Xcode7运行的效果是怎样的。



