//
//  UIView+AYBadge.m
//  AYBadgeView
//
//  Created by Yang on 2017/9/20.
//  Copyright © 2017年 Tucodec. All rights reserved.
//

#import "UIView+AYBadge.h"
#import <objc/runtime.h>

static const char AYBadgeKey = '\0';

@implementation UIView (AYBadge)
#pragma mark --- 利用runtime动态添加属性

- (void)setAyBadge:(AYBadgeLabel *)ayBadge{
    if (ayBadge != self.ayBadge) {
        [self.ayBadge removeFromSuperview];
        [self addSubview:ayBadge];
        // 切换视图层次
        [self bringSubviewToFront:ayBadge];
        ayBadge.center = CGPointMake(self.frame.size.width-3, 3);
        // 存储新的
        [self willChangeValueForKey:@"ayBadge"]; // KVO
        
        objc_setAssociatedObject(self, &AYBadgeKey,ayBadge, OBJC_ASSOCIATION_ASSIGN);
        
        [self didChangeValueForKey:@"ayBadge"]; // KVO
    }
}

- (AYBadgeLabel *)ayBadge {
    return objc_getAssociatedObject(self, &AYBadgeKey);
}

@end
