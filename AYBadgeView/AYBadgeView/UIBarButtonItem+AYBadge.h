//
//  UIBarButtonItem+AYBadge.h
//  AYBadgeView
//
//  Created by Yang on 2017/9/20.
//  Copyright © 2017年 Tucodec. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AYBadgeLabel.h"
@interface UIBarButtonItem (AYBadge)

/**
 * 给UIBarButtonItem添加角标
 */
@property(nonatomic, strong)AYBadgeLabel *ayBadge;

- (UIView *)bottomView;
@end
