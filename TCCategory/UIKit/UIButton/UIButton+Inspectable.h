#import "TCCategory.h"

@interface UIButton (Inspectable)

/** 按钮 UIControlStateNormal 时的背景颜色 */
@property (strong, nonatomic) IBInspectable UIColor *backgroundColorForNormal;
/** 按钮 UIControlStateHighlighted 时的背景颜色 */
@property (strong, nonatomic) IBInspectable UIColor *backgroundColorForHighlighted;
/** 按钮 UIControlStateDisabled 时的背景颜色 */
@property (strong, nonatomic) IBInspectable UIColor *backgroundColorForDisabled;
/** 按钮 UIControlStateSelected 时的背景颜色 */
@property (strong, nonatomic) IBInspectable UIColor *backgroundColorForSelected;

@end
