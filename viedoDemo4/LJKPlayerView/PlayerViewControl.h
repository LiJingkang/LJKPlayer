//
//  PlayerViewControl.h
//  viedoDemo4
//
//  Created by 林之杰 on 16/1/19.
//  Copyright © 2016年 林之杰. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol IJKMediaPlayback;

@interface PlayerViewControl : UIControl
/**
 *  代理属性，成为IJKMediaPlayback 的代理
 */
@property (weak, nonatomic) id<IJKMediaPlayback> delegatePlayer;
/** 转换线路按钮 */
@property (strong, nonatomic) UIButton* switchBut;
/** 滚动条 */
@property (strong, nonatomic) UISlider* slider;
/** 显示时间的Label */
@property (strong, nonatomic) UILabel * timer;
/** 显示弹幕按钮 */
@property (strong, nonatomic) UIButton* danmakuBut;
/** 全屏按钮  */
@property (strong, nonatomic) UIButton* fullScreenBut;
/** 播放按钮 */
@property (strong, nonatomic) UIButton* playBut;
/** 结束播放按钮 */
@property (strong, nonatomic) UIView* overlay;
@property (strong, nonatomic) UIView* buttomlay;

/**
 *  提示窗口
 */
@property (strong, nonatomic) UIActivityIndicatorView* indicator;

- (void)refreshPlayerContrl;
- (void)showNoFade;
- (void)showAndFade;
- (void)hide;

- (void)beginDragMediaSlider;
- (void)endDragMediaSlider;
- (void)continueDragMediaSlider;


+ (instancetype)viewFromNib;

@end
