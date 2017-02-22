//
//  VXSecondViewController.m
//  VXDIDemo
//
//  Created by 张新 on 17/2/22.
//  Copyright © 2017年 voidxin. All rights reserved.
//

#import "VXSecondViewController.h"

@interface VXSecondViewController ()

@end

@implementation VXSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addBaseViews];
    
}

- (void)addBaseViews {
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:self.name preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"知道了" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alertVC addAction:cancelAction];
    [self presentViewController:alertVC animated:YES completion:nil];
    
    NSLog(@"name is:%@",self.name);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
