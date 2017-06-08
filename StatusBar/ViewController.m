//
//  ViewController.m
//  StatusBar
//
//  Created by lailin on 17/6/8.
//  Copyright © 2017年 lailin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


static id _instance;

+(instancetype)shareIntance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

- (BOOL)prefersStatusBarHidden{
    return self.statusBarHidden;
}
- (UIStatusBarStyle)preferredStatusBarStyle{
    return  self.statusBarStyle;
}
#pragma mark settter



- (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle{
    _statusBarStyle = statusBarStyle;
    
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)setStatusBarHidden:(BOOL)statusBarHidden{
    _statusBarHidden = statusBarHidden;
    
    [self setNeedsStatusBarAppearanceUpdate];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonClick:(id)sender {
    NSLog(@"111");
//    self.statusBarStyle = UIStatusBarStyleLightContent;
    [ViewController shareIntance].statusBarStyle = UIStatusBarStyleLightContent;
}
- (IBAction)buttonClick2:(id)sender {
//    self.statusBarStyle = UIStatusBarStyleDefault;
    [ViewController shareIntance].statusBarStyle = UIStatusBarStyleDefault;
}
- (IBAction)statusBarHanderClick:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    
    self.statusBarHidden = !sender.selected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
