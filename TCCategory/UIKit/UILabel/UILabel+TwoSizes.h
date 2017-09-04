#import "TCCategory.h"

@interface UILabel (TwoSizes)

/** label text 最后一个字符串变小
 *  必须先给label.text赋值
 */
- (void)setSmallTailing:(CGFloat)fontSize;

/**
 *  设置 label.text 从指定字符串 string 开始的后面的文字的字体大小
 *
 *  @param fontSize 需要的文字大小
 *  @param string   设置字体大小的开始字符串（包括）
 */
- (void)setTailingFontSize:(CGFloat)fontSize fromString:(NSString *)string;

/**
 *  设置 label.text 到指定 string 之前的字体大小，并加粗
 *
 *  @param fontSize 需要加粗的文字大小
 *  @param string   设置字体变粗的结束字符串（不包括）
 */
- (void)setBoldFontSize:(CGFloat)fontSize toString:(NSString *)string;

/**
 *  以 string 为分界，前面的字体设置粗体大小，后面的设置一个常规大小
 *
 *  @param boldFontSize    加粗的字体大小
 *  @param tailingFontSize 常规的字体大小
 *  @param string          加粗和常规字体的分界字符串
 */
- (void)setBoldFontSize:(CGFloat)boldFontSize tailingFontSize:(CGFloat)tailingFontSize divString:(NSString *)string;

/**
 *  将一串字符串中的某段连续字符加粗
 *
 *  @param boldFontSize    加粗的字体大小
 *  @param string          需要变化的字符
 */
- (void)setBoldFontSize:(CGFloat)boldFontSize forString:(NSString *)string;

@end
