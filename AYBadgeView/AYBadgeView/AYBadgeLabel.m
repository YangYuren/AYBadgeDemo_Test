//
//  AYBadgeLabel.m
//  AYBadgeView
//
//  Created by Yang on 2017/9/20.
//  Copyright © 2017年 Tucodec. All rights reserved.
//

#import "AYBadgeLabel.h"

@implementation AYBadgeLabel
#pragma mark --- 不能单例模式!!!!
+(instancetype)shareInstance_Badge{
    //static AYBadgeLabel * shared = nil;
    //static dispatch_once_t onceToken;
    //dispatch_once(&onceToken, ^{
        //shared =
        return [[AYBadgeLabel alloc] initWithFrame:CGRectMake(0, 0, 17, 17)];
    //});
    //return shared;
}
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBase];
    }
    return self;
}

- (void)setBase {
    self.backgroundColor = [UIColor redColor];
    self.textColor = [UIColor whiteColor];
    self.font = [UIFont systemFontOfSize:13];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 8.5;
    self.textAlignment = NSTextAlignmentCenter;
    self.text = nil;
    self.hidden = YES;
}
#pragma mark --- 设置角标的值
- (void)setBadgeValue:(NSInteger)badgeValue {
    if (badgeValue>99) {
        self.hidden = NO;
        self.text = @"99+";
        [self sizeToFit];
        self.bounds = CGRectMake(0, 0, 27, 17);
        return;
    }else if (badgeValue>9){
        self.hidden = NO;
        self.text = [NSString stringWithFormat:@"%ld",badgeValue];
        self.bounds = CGRectMake(0, 0, 22, 17);
        return;
    }else if (badgeValue>0){
        self.hidden = NO;
        self.text = [NSString stringWithFormat:@"%ld",badgeValue];
        self.bounds = CGRectMake(0, 0, 17, 17);
        return;
    }else{
        self.text = nil;
        self.hidden = YES;
        return;
    }
}
//重写badgeNumber的set方法
-(void)setBadgeNumber:(NSUInteger)badgeNumber{
    _badgeNumber = badgeNumber;
    [self setBadgeValue:badgeNumber];
}



@end
