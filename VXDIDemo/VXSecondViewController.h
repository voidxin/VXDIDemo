//
//  VXSecondViewController.h
//  VXDIDemo
//
//  Created by 张新 on 17/2/22.
//  Copyright © 2017年 voidxin. All rights reserved.
//

#import "VXBaseViewController.h"
#import "VXProtocols.h"
@interface VXSecondViewController : VXBaseViewController<VXSecondViewControllerProtocol>
@property(nonatomic,strong)NSString *name;
@end
