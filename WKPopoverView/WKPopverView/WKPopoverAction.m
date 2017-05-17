//
//  WKPopoverAction.m
//  WKPopoverView
//
//  Created by dev on 2017/5/17.
//  Copyright © 2017年 Jeaner. All rights reserved.
//

#import "WKPopoverAction.h"

@interface WKPopoverAction ()

@property (nonatomic, strong, readwrite) UIImage *image; ///< 图标
@property (nonatomic, copy, readwrite) NSString *title; ///< 标题
@property (nonatomic, copy, readwrite) void(^handler)(WKPopoverAction *action); ///< 选择回调

@end

@implementation WKPopoverAction

+ (instancetype)actionWithTitle:(NSString *)title handler:(void (^)(WKPopoverAction *action))handler {
    return [self actionWithImage:nil title:title handler:handler];
}

+ (instancetype)actionWithImage:(UIImage *)image title:(NSString *)title handler:(void (^)(WKPopoverAction *action))handler {
    WKPopoverAction *action = [[self alloc] init];
    action.image = image;
    action.title = title ? : @"";
    action.handler = handler ? : NULL;
    
    return action;
}



@end
