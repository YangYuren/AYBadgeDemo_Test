//
//  AYBadgeLabel.h
//  AYBadgeView
//
//  Created by Yang on 2017/9/20.
//  Copyright © 2017年 Tucodec. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AYBadgeLabel : UILabel
/**
 *创建对象
 */
+ (instancetype)shareInstance_Badge;

/**
 * 设置角标的值
 */
@property(nonatomic,assign)NSUInteger badgeNumber;
@end
