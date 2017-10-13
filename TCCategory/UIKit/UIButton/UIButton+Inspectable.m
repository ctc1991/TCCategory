//
//  UIButton+Inspectable.m
//  demo
//
//  Created by Tech on 2017/10/13.
//  Copyright © 2017年 ctc. All rights reserved.
//

#import "UIButton+Inspectable.h"

@implementation UIButton (Inspectable)

- (UIColor *)backgroundColorForNormal {
    return [UIColor mainColorWithImage:[self backgroundImageForState:UIControlStateNormal]];
}

- (void)setBackgroundColorForNormal:(UIColor *)backgroundColorForNormal {
    [self setBackgroundImage:[UIImage imageWithColor:backgroundColorForNormal] forState:UIControlStateNormal];
}

- (UIColor *)backgroundColorForHighlighted {
    return [UIColor mainColorWithImage:[self backgroundImageForState:UIControlStateHighlighted]];
}

- (void)setBackgroundColorForHighlighted:(UIColor *)backgroundColorForHighlighted {
    [self setBackgroundImage:[UIImage imageWithColor:backgroundColorForHighlighted] forState:UIControlStateHighlighted];
}

- (UIColor *)backgroundColorForDisabled {
    return [UIColor mainColorWithImage:[self backgroundImageForState:UIControlStateDisabled]];
}

- (void)setBackgroundColorForDisabled:(UIColor *)backgroundColorForDisabled {
    [self setBackgroundImage:[UIImage imageWithColor:backgroundColorForDisabled] forState:UIControlStateDisabled];
}

- (UIColor *)backgroundColorForSelected {
    return [UIColor mainColorWithImage:[self backgroundImageForState:UIControlStateSelected]];
}

- (void)setBackgroundColorForSelected:(UIColor *)backgroundColorForSelected {
    [self setBackgroundImage:[UIImage imageWithColor:backgroundColorForSelected] forState:UIControlStateSelected];
}

@end
