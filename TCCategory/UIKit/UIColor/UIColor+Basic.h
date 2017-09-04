#import "TCCategory.h"

@interface UIColor (Basic)

//RGB
+ (instancetype)colorWithR:(NSUInteger)r g:(NSUInteger)g b:(NSUInteger)b;
+ (instancetype)colorWithR:(NSUInteger)r g:(NSUInteger)g b:(NSUInteger)b a:(CGFloat)a;

// Hex
+ (instancetype)colorWithHex:(NSInteger)hex;
+ (instancetype)colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha;

@end
