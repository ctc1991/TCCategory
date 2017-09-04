#import "UIViewController+Basic.h"

@implementation UIViewController (Basic)

+ (instancetype)viewControllerWithSb:(NSString *)sb vc:(NSString *)vc {
    return [[UIStoryboard storyboardWithName:sb bundle:nil] instantiateViewControllerWithIdentifier:vc];
}

- (void)enumerateView:(UIView *)view forTextField:(void (^)(UITextField *textField))textFieldBlock {
    for (UIView *v in view.subviews) {
        if ([v isKindOfClass:[UITextField class]]) {
            textFieldBlock((UITextField *)v);
        }
        [self enumerateView:v forTextField:textFieldBlock];
    }
}

@end
