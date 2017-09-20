//
//  UIView+AYBadge.h
//  AYBadgeView
//
//  Created by Yang on 2017/9/20.
//  Copyright © 2017年 Tucodec. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AYBadgeLabel.h"
@interface UIView (AYBadge)

/**
 * 给所有View视图动态添加一个属性
 */
@property (nonatomic, strong)AYBadgeLabel *ayBadge;

@end
