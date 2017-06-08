//
//  ViewController.h
//  StatusBar
//
//  Created by lailin on 17/6/8.
//  Copyright © 2017年 lailin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic ,assign) UIStatusBarStyle statusBarStyle;
@property (nonatomic ,assign) BOOL statusBarHidden;


+(instancetype)shareIntance;
@end

