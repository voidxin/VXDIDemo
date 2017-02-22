//
//  VXFirstViewController.m
//  VXDIDemo
//
//  Created by 张新 on 17/2/22.
//  Copyright © 2017年 voidxin. All rights reserved.
//

#import "VXFirstViewController.h"
#import "VXProtocols.h"
#import <JSObjection.h>
@interface VXFirstViewController ()
@property(nonatomic,strong)UIButton *btn;
@end

@implementation VXFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addBaseView];
    
}
#pragma mark - addViews
- (void)addBaseView {
    self.title = @"首页";
    self.btn.frame = CGRectMake(0, 0,250, 80);
    self.btn.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
    [self.view addSubview:self.btn];
}

#pragma mark - btnAction
- (void)btnAction {
    
    UIViewController <VXSecondViewControllerProtocol> *secondVC = [[JSObjection defaultInjector] getObject:@protocol(VXSecondViewControllerProtocol)];
    secondVC.title = @"第二页";
    secondVC.name = @"赵日天";
    [self.navigationController pushViewController:secondVC animated:YES];
}

#pragma mark - VXFirstViewControllerProtocol method
- (void)printText {
    NSLog(@"this is VXFirstViewControllerProtocol method");
}

#pragma mark - getter
- (UIButton *)btn {
    if (!_btn) {
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_btn setTitle:@"nextPage" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [_btn setBackgroundColor:[UIColor grayColor]];
        [_btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}



@end
