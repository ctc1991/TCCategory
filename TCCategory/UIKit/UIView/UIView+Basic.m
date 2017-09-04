#import "UIView+Basic.h"

@implementation UIView (Basic)

+ (instancetype)viewFromNib {
    return [self viewWithNibName:NSStringFromClass(self)];
}

+ (instancetype)viewWithNibName:(NSString *)nibName {
    return [[[NSBundle mainBundle]loadNibNamed:nibName owner:nil options:nil] objectAtIndex:0];
}

- (UIImageView *)imageViewWithTag:(NSInteger)tag {
    UIView *view = [self viewWithTag:tag];
    if ([view isKindOfClass:[UIImageView class]]) {
        return (UIImageView *)view;
    } else {
        return nil;
    }
}

- (UILabel *)labelWithTag:(NSInteger)tag {
    UIView *view = [self viewWithTag:tag];
    if ([view isKindOfClass:[UILabel class]]) {
        return (UILabel *)view;
    } else {
        return nil;
    }
}

- (UITextField *)textFieldWithTag:(NSInteger)tag {
    UIView *view = [self viewWithTag:tag];
    if ([view isKindOfClass:[UITextField class]]) {
        return (UITextField *)view;
    } else {
        return nil;
    }
}

@end
