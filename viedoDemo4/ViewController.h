//
//  ViewController.h
//  viedoDemo4
//
//  Created by 林之杰 on 16/1/19.
//  Copyright © 2016年 林之杰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerViewController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *container;
@property (strong, nonatomic) PlayerViewController *vc;

@end

