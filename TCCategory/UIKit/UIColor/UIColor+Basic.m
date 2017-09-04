#import "UIColor+Basic.h"

@implementation UIColor (Basic)

//RGB
+ (instancetype)colorWithR:(NSUInteger)r g:(NSUInteger)g b:(NSUInteger)b {
    return [self colorWithRed:r green:g blue:b alpha:1];
}
+ (instancetype)colorWithR:(NSUInteger)r g:(NSUInteger)g b:(NSUInteger)b a:(CGFloat)a {
    return [self colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
}

// Hex
+ (instancetype)colorWithHex:(NSInteger)hex {
    return [self colorWithHex:hex alpha:1];
}
+ (instancetype)colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha {
    hex = hex < 0x000000 ? 0x000000 : hex;
    hex = hex > 0xFFFFFF ? 0xFFFFFF : hex;
    CGFloat red = (hex & 0xFF0000) >> 16;
    CGFloat green = (hex & 0xFF00) >> 8;
    CGFloat blue = hex & 0xFF;
    return [self colorWithR:red g:green b:blue a:alpha];
}

@end
