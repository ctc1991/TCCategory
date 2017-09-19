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

+ (UIColor *)randomColor {
    static BOOL seeded = NO;
    if (!seeded) {
        srand48(time(0));	// drand48 函数需要使用 srand48 来初始化随机数种子
        seeded = YES;
    }
    // drand48 函数会生成一个 0.0 – 1.0 的 double
    CGFloat r = drand48();
    CGFloat g = drand48();
    CGFloat b = drand48();
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}

+ (UIColor *)mainColorWithImage:(UIImage *)image {
#if __IPHONE_OS_VERSION_MAX_ALLOWED > __IPHONE_6_1
    int bitmapInfo = kCGBitmapByteOrderDefault | kCGImageAlphaPremultipliedLast;
#else
    int bitmapInfo = kCGImageAlphaPremultipliedLast;
#endif
    //第一步，先把图片缩小，加快计算速度。但越小结果误差可能越大
    CGSize thumbSize = CGSizeMake(image.size.width / 2.0, image.size.height / 2.0);
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = CGBitmapContextCreate(NULL,
                                                 thumbSize.width,
                                                 thumbSize.height,
                                                 8,	// bits per component
                                                 thumbSize.width * 4,
                                                 colorSpace,
                                                 bitmapInfo);
    
    CGRect drawRect = CGRectMake(0, 0, thumbSize.width, thumbSize.height);
    CGContextDrawImage(context, drawRect, image.CGImage);
    CGColorSpaceRelease(colorSpace);
    
    //第二步，取每个点的像素值
    unsigned char *data = CGBitmapContextGetData(context);
    if (data == NULL) return nil;
    NSCountedSet *cls = [NSCountedSet setWithCapacity:thumbSize.width * thumbSize.height];
    
    for (int x = 0; x < thumbSize.width; x ++) {
        for (int y = 0; y < thumbSize.height; y ++) {
            int offset = 4 * (x * y);
            int red = data[offset];
            int green = data[offset + 1];
            int blue = data[offset + 2];
            int alpha = data[offset + 3];
            if (alpha > 0) {	// 去除透明
                if (red == 255 && green == 255 && blue == 255) {	// 去除白色
                } else {
                    NSArray *clr = @[@(red), @(green), @(blue), @(alpha)];
                    [cls addObject:clr];
                }
            }
        }
    }
    CGContextRelease(context);
    //第三步，找到出现次数最多的那个颜色
    NSEnumerator *enumerator = [cls objectEnumerator];
    NSArray *curColor = nil;
    NSArray *MaxColor = nil;
    NSUInteger MaxCount = 0;
    while ((curColor = [enumerator nextObject]) != nil) {
        NSUInteger tmpCount = [cls countForObject:curColor];
        if (tmpCount < MaxCount) continue;
        MaxCount = tmpCount;
        MaxColor = curColor;
        
    }
    return [UIColor colorWithRed:([MaxColor[0] intValue] / 255.0f) green:([MaxColor[1] intValue] / 255.0f) blue:([MaxColor[2] intValue] / 255.0f) alpha:([MaxColor[3] intValue] / 255.0f)];
}

@end
