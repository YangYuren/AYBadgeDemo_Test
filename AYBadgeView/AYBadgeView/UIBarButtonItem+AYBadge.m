//
//  UIBarButtonItem+AYBadge.m
//  AYBadgeView
//
//  Created by Yang on 2017/9/20.
//  Copyright © 2017年 Tucodec. All rights reserved.
//

#import "UIBarButtonItem+AYBadge.h"
#import "UIView+AYBadge.h"
@implementation UIBarButtonItem (AYBadge)

-(void)setAyBadge:(AYBadgeLabel *)ayBadge{
    [self bottomView].ayBadge = ayBadge;
}

-(AYBadgeLabel *)ayBadge{
    return [self bottomView].ayBadge;
}

#pragma mark - 获取Badge的父视图
- (UIView *)bottomView {//父视图有imageView就返回，没有的胡就在家navigationButton上。
    
    // UIBarButtonItem的Badge所在父视图为:UIImageView
    UIView *navigationButton = [self valueForKey:@"_view"];
    
    for (UIView *subView in navigationButton.subviews) {
        if ([subView isKindOfClass:NSClassFromString(@"UIImageView")]) {
            subView.layer.masksToBounds = NO;
            return subView;
        }
    }
    
    return navigationButton;
}

@end
