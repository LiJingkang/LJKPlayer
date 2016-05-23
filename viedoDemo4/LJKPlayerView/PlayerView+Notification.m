//
//  PlayerView+Notification.m
//  viedoDemo4
//
//  Created by 林之杰 on 16/1/19.
//  Copyright © 2016年 林之杰. All rights reserved.
//

#import "PlayerView+Notification.h"

@implementation  PlayerViewController (Notification)

/**
 *  设置监听
 */
- (void)setupNotification {
    [UIApplication sharedApplication].idleTimerDisabled = YES;
    
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    
    [center addObserver:self
               selector:@selector  /* 播放 */(__IJKMPMediaPlaybackIsPreparedToPlayDidChangeNotification:)
                   name:IJKMPMediaPlaybackIsPreparedToPlayDidChangeNotification object:nil];
    
    [center addObserver:self
               selector:@selector(__IJKMPMoviePlayerLoadStateDidChangeNotification:)
                   name:IJKMPMoviePlayerLoadStateDidChangeNotification object:nil];
    
    [center addObserver:self
               selector:@selector(__IJKMPMoviePlayerPlaybackDidFinishNotification:)
                   name:IJKMPMoviePlayerPlaybackDidFinishNotification object:nil];
    
    
    [center addObserver:self
               selector:@selector(__screenDidConnectNotification:)
                   name:UIScreenDidConnectNotification object:nil];
    
    
    [center addObserver:self
               selector:@selector(__screenDidDisconnectNotification:)
                   name:UIScreenDidDisconnectNotification object:nil];
}

/**
 *  移除监听
 */
- (void)removeNotification {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    [UIApplication sharedApplication].idleTimerDisabled = NO;
}


#pragma mark - Private

- (void)__IJKMPMediaPlaybackIsPreparedToPlayDidChangeNotification:(NSNotification *)sender
{
    [self.player play];
    [self.playerControl refreshPlayerContrl];
}

- (void)__IJKMPMoviePlayerLoadStateDidChangeNotification:(NSNotification *)sender
{
   [self.playerControl refreshPlayerContrl];
}

- (void)__IJKMPMoviePlayerPlaybackDidFinishNotification:(NSNotification *)sender
{
    NSInteger reason =
    [[sender.userInfo valueForKey:IJKMPMoviePlayerPlaybackDidFinishReasonUserInfoKey]integerValue];
    
    if(reason != IJKMPMovieFinishReasonPlaybackEnded)
    {
        [self.playerControl refreshPlayerContrl];
    }
}

- (void)__screenDidConnectNotification:(NSNotification *)sender
{
    }

- (void)__screenDidDisconnectNotification:(NSNotification *)sender
{
    
}

@end
