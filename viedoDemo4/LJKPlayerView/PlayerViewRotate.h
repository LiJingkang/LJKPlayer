//
//  PlayerViewRotate.h
//  videoDemo2
//
//  Created by 林之杰 on 16/1/14.
//  Copyright © 2016年 林之杰. All rights reserved.
//  

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
// Rotate 旋转
@interface PlayerViewRotate : NSObject

// 方向
+ (void)forceOrientation: (UIInterfaceOrientation)orientation;

/**
 *  判断是否横屏
 *
 *  @return BOOL值是或者否
 */
+ (BOOL)isOrientationLandscape;

@end
