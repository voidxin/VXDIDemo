//
//  VXSecondModule.m
//  VXDIDemo
//
//  Created by 张新 on 17/2/22.
//  Copyright © 2017年 voidxin. All rights reserved.
//

#import "VXSecondModule.h"
#import "VXSecondViewController.h"
@implementation VXSecondModule
+ (void)load {
    JSObjectionInjector *inj = [JSObjection defaultInjector];
    inj = inj ? : [JSObjection createInjector];
    inj =[inj withModule:[[self alloc] init]];
    [JSObjection setDefaultInjector:inj];
}
- (void)configure {
    [self bindClass:[VXSecondViewController class] toProtocol:@protocol(VXSecondViewControllerProtocol)];
}
@end
