//
//  UITextField+Inspectable.h
//  demo
//
//  Created by Tech on 2017/10/13.
//  Copyright © 2017年 ctc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Inspectable)

/** placeholder 颜色 */
@property (strong, nonatomic) IBInspectable UIColor *placeholderColor;

/** UITextField 的边框左侧和文字左侧的距离 */
@property (assign, nonatomic) IBInspectable CGFloat leadingSpacing;
/** UITextField 的边框右侧和文字右侧的距离 */
@property (assign, nonatomic) IBInspectable CGFloat taillingSpacing;

@end
