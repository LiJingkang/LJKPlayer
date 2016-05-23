//
//  ViewController.m
//  viedoDemo4
//
//  Created by 林之杰 on 16/1/19.
//  Copyright © 2016年 林之杰. All rights reserved.
//

#import "ViewController.h"
#import "PlayerViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //本地视频
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"my_video" ofType:@"mp4"];

//    NSURL *url = [NSURL URLWithString:path];

    PlayerViewController *vc = [[PlayerViewController alloc] initWithURL:[NSURL URLWithString:@"http://live.hkstv.hk.lxdns.com/live/hks/playlist.m3u8"] withFrame:CGRectMake(0, 64, self.view.frame.size.width, 200)];
//
//    PlayerViewController *vc = [[PlayerViewController alloc] initWithURL:url withFrame:CGRectMake(0, 64, self.view.frame.size.width, 400)];


    [self.view addSubview:vc];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"ViewC appear");

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}

@end
