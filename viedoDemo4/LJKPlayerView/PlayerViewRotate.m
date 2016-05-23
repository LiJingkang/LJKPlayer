//
//  PlayerViewRotate.m
//  videoDemo2
//
//  Created by 林之杰 on 16/1/14.
//  Copyright © 2016年 林之杰. All rights reserved.
//

#import "PlayerViewRotate.h"

@implementation PlayerViewRotate

+ (void)forceOrientation:(UIInterfaceOrientation)orientation {
    // 是否实现了这个方法
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)])
    {
        // 转成一个SEL类型的数据
        SEL selector = NSSelectorFromString(@"setOrientation:");
        // 初始化
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        // 设置selector
        [invocation setSelector:selector];
        //设置target
        [invocation setTarget:[UIDevice currentDevice]];
        int val = orientation;
        // 设置参数
        [invocation setArgument:&val atIndex:2];
        // 获取结果
        [invocation invoke];
    }
}

/**
 *  判断是否横屏
 */
+ (BOOL)isOrientationLandscape {
    // 判断是否横屏
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return YES;
    }else {
        return NO;
    }
}
@end
