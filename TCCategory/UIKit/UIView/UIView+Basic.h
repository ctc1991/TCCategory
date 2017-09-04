#import "TCCategory.h"

@interface UIView (Basic)

/**
 根据跟本类同名的Xib文件初始化
 */
+ (nonnull instancetype)viewFromNib;
+ (nonnull instancetype)viewWithNibName:(nonnull NSString *)nibName;


- (nullable __kindof UIImageView *)imageViewWithTag:(NSInteger)tag;
- (nullable __kindof UILabel *)labelWithTag:(NSInteger)tag;
- (nullable __kindof UITextField *)textFieldWithTag:(NSInteger)tag;

@end
