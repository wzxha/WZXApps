//
//  ViewController.m
//  WZXApps
//
//  Created by WzxJiang on 16/7/4.
//  Copyright © 2016年 WzxJiang. All rights reserved.
//

#import "ViewController.h"
#import "WZXApps.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)haveQQ:(id)sender {
    [self showAlert:[WZXApps wzx_haveQQ]];
}

- (IBAction)haveWeChat:(id)sender {
    [self showAlert:[WZXApps wzx_haveWeChat]];
}

- (IBAction)haveWeiBo:(id)sender {
    [self showAlert:[WZXApps wzx_haveWeiBo]];
}

- (IBAction)haveFacebook:(id)sender {
    [self showAlert:[WZXApps wzx_haveFacebook]];
}

- (IBAction)haveTwitter:(id)sender {
    [self showAlert:[WZXApps wzx_haveTwitter]];
}

- (IBAction)haveInstagram:(id)sender {
    [self showAlert:[WZXApps wzx_haveInstagram]];
}

- (void)showAlert:(BOOL)isHave {
    UIAlertController * alertC = [UIAlertController alertControllerWithTitle:isHave ? @"have" : @"haven't"  message:nil preferredStyle:UIAlertControllerStyleAlert];
    [alertC addAction:[UIAlertAction actionWithTitle:@"Sure" style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:alertC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
