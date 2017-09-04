#import "TCCategory.h"

@interface NSString (Basic)

/** 中文转化为拼音 默认输出大写 */
- (NSString *)pinyin;
/** 中文首字母 默认输出大写 */
- (NSString *)acronym;

@end
