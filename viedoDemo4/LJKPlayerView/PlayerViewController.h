//
//  PlayerViewController.h
//  viedoDemo4
//
//  Created by 林之杰 on 16/1/19.
//  Copyright © 2016年 林之杰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <IJKMediaFramework/IJKMediaFramework.h>
#import "PlayerViewControl.h"
@class PlayerViewControl;

@interface PlayerViewController : UIView
/**
 *  url
 */
@property (atomic, strong) NSURL *url;
/**
 *  ijkPlay
 */
@property (atomic, retain) id <IJKMediaPlayback> player;
/**
 *  播放器前面的控制台
 */
@property (strong, nonatomic) PlayerViewControl *playerControl;
@property (strong, nonatomic) UIView *playerView;

/**
 *  初始化
 *
 *  @param url   播放链接
 *  @param frame frame
 *
 *  @return PlayerViewController
 */
- (instancetype)initWithURL:(NSURL*)url withFrame:(CGRect)frame;


@end
