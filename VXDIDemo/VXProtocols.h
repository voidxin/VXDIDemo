//
//  VXProtocols.h
//  VXDIDemo
//
//  Created by 张新 on 17/2/22.
//  Copyright © 2017年 voidxin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VXFirstViewControllerProtocol <NSObject>

- (void)printText;

@end


@protocol VXSecondViewControllerProtocol <NSObject>

@property(nonatomic,strong)NSString *name;

@end
