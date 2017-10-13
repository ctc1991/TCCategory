#import "TCCategory.h"

@interface UITextField (Inspectable)

/** placeholder 颜色 */
@property (strong, nonatomic) IBInspectable UIColor *placeholderColor;
/** UITextField 的边框左侧和文字左侧的距离 */
@property (assign, nonatomic) IBInspectable CGFloat leadingSpacing;
/** UITextField 的边框右侧和文字右侧的距离 */
@property (assign, nonatomic) IBInspectable CGFloat taillingSpacing;
/** 设置该属性的时候，IB中的textFiled的borderStyle设置为默认 */
@property (assign, nonatomic) IBInspectable BOOL borderStyleNone;

@end
