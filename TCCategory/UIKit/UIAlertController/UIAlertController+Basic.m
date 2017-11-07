#import "UIAlertController+Basic.h"

@implementation UIAlertController (Basic)

- (void)showInViewController:(UIViewController *)viewController {
    [viewController present:self];
}

+ (instancetype)alertWithTitle:(NSString *)title message:(NSString *)message firstText:(NSString *)firstText firstHandler:(UIAlertActionHandler)firstHandler secondText:(NSString *)secondText secondHandler:(UIAlertActionHandler)secondHandler {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    if (firstText && ![firstText isEqualToString:@""]) {
        [alertController addAction:[UIAlertAction actionWithTitle:firstText style:UIAlertActionStyleDefault handler:firstHandler]];
    }
    if (secondText && ![secondText isEqualToString:@""]) {
        [alertController addAction:[UIAlertAction actionWithTitle:secondText style:UIAlertActionStyleDefault handler:secondHandler]];
    }
    return alertController;
}

+ (instancetype)alertWithTitle:(NSString *)title message:(NSString *)message {
    return [self alertWithTitle:title message:message firstText:nil firstHandler:nil secondText:nil secondHandler:nil];
}

+ (instancetype)alertWithTitle:(NSString *)title message:(NSString *)message firstText:(NSString *)firstText firstHandler:(UIAlertActionHandler)firstHandler {
    return [self alertWithTitle:title message:message firstText:firstText firstHandler:firstHandler secondText:nil secondHandler:nil];
}

+ (instancetype)actionSheetWithTitle:(NSString *)title message:(NSString *)message cancelText:(NSString *)cancelText cancelHandler:(UIAlertActionHandler)cancelHandler actions:(NSArray<UIAlertAction *> *)actions {
    UIAlertController *alertController = [self actionSheetWithTitle:title message:message actions:actions];
    if (cancelText && ![cancelText isEqualToString:@""]) {
        [alertController addAction:[UIAlertAction actionWithTitle:cancelText style:UIAlertActionStyleDefault handler:cancelHandler]];
    } else {
        [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:cancelHandler]];
    }
    return alertController;
}

+ (instancetype)actionSheetWithTitle:(NSString *)title message:(NSString *)message actions:(NSArray<UIAlertAction *> *)actions {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    for (UIAlertAction *action in actions) {
        [alertController addAction:action];
    }
    return alertController;
}

@end
