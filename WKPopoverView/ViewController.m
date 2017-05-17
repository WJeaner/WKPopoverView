//
//  ViewController.m
//  WKPopoverView
//
//  Created by dev on 2017/5/17.
//  Copyright © 2017年 Jeaner. All rights reserved.
//

#import "ViewController.h"
#import "WKPopoverView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btn.frame=CGRectMake(100, 160, 100, 40);
    [btn addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}


-(void)clicked:(id)sender{
    WKPopoverView *popView=[WKPopoverView popoverView];
    popView.showShade=YES;//是否有周围的阴影
    popView.hideAfterTouchOutside=YES;//点击其他地方是否收起view

    [popView setStyle:PopoverViewStyleDark];
    WKPopoverAction *action1=[WKPopoverAction actionWithTitle:@"test1" handler:^(WKPopoverAction *action) {
        NSLog(@"点击了 test1");
    }];
    WKPopoverAction *action2=[WKPopoverAction actionWithTitle:@"test2" handler:^(WKPopoverAction *action) {
        NSLog(@"点击了 test2");
    }];
    WKPopoverAction *action3=[WKPopoverAction actionWithTitle:@"test3" handler:^(WKPopoverAction *action) {
        NSLog(@"点击了 test3");
    }];
    WKPopoverAction *action4=[WKPopoverAction actionWithTitle:@"test4" handler:^(WKPopoverAction *action) {
        NSLog(@"点击了 test4");
    }];
    
//    [popView showToView:sender withActions:@[action1,action2,action3,action4]]; //基于当前view的坐标加载
    
    [popView showToPoint:CGPointMake(150, 190) withActions:@[action1,action2,action3,action4]];//基于给的点坐标进行加载
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
