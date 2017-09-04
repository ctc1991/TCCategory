#import "NSString+Basic.h"

@implementation NSString (Basic)

- (NSString *)pinyin {
    NSMutableString *pinyin = [self mutableCopy];
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformStripCombiningMarks, NO);
    return [[pinyin uppercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
}

- (NSString *)acronym {
    NSMutableString *pinyin = [self mutableCopy];
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformStripCombiningMarks, NO);
    NSArray *array = [[pinyin uppercaseString] componentsSeparatedByString:@" "];
    NSString *acronym = @"";
    for (NSString *pinyin in array) {
        acronym = [acronym stringByAppendingString:[pinyin substringWithRange:NSMakeRange(0, 1)]];
    }
    return acronym;
}

@end
