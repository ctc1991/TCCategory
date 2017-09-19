#import "TCCategory.h"

@interface UIColor (Basic)

//RGB
+ (instancetype)colorWithR:(NSUInteger)r g:(NSUInteger)g b:(NSUInteger)b;
+ (instancetype)colorWithR:(NSUInteger)r g:(NSUInteger)g b:(NSUInteger)b a:(CGFloat)a;

// Hex
+ (instancetype)colorWithHex:(NSInteger)hex;
+ (instancetype)colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha;

/** 生成一个随机颜色 */
+ (UIColor *)randomColor;

/** 根据图片获取图片的主色调 */
+ (UIColor *)mainColorWithImage:(UIImage *)image;

@end
