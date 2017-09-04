#import "TCCategory.h"

@interface UIViewController (Basic)

+ (instancetype)viewControllerWithSb:(NSString *)sb  vc:(NSString *)vc;

- (void)enumerateView:(UIView *)view forTextField:(void (^)(UITextField *textField))textFieldBlock;

@end
