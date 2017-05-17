# WKPopoverView
Click on the button will be a pop-up box, high encapsulation, a key to achieve can call

使用方法:

小伙伴可以自行下载demo,demo里面有详细的说明和注释

由于我已经给他做了一定的封装所以大家可以直接调用,首先将demo里面的WKPooverView的文件夹拖到自己的项目中

在你要处理的点击事件里面对view进行初始化,当然要包含WKPopoverView的头文件,初始化的方法 WKPopoverView *popView=[WKPopoverView popoverView];

对此你可以设置popView的属性,有一些属性为默认属性大家可以详细看看代码

之后添加你需要的cell.这里的cell就是你弹出框有多少内容

具体执行的方法:WKPopoverAction *action1=[WKPopoverAction actionWithTitle:@"test1" handler:^(WKPopoverAction *action) {
        NSLog(@"点击了 test1");
    }];
后面的block可以写上你想要执行的动作,比方说调转页面等等

最后 将你添加的cell加入到popView中 调用 [popView showToView:sender withActions:@[action1,action2,action3,.....]];


最终的效果如图:

![image](https://github.com/WJeaner/WKPopoverView/raw/master/WKPopoverView/popView.gif)
