#import "TCCategory.h"

typedef void(^UIAlertActionHandler)(UIAlertAction * _Nonnull action);

@interface UIAlertController (Basic)

- (void)showInViewController:(nonnull UIViewController *)viewController
NS_SWIFT_NAME(showIn(_:));

+ (nonnull instancetype)alertWithTitle:(nullable NSString *)title message:(nullable NSString *)message
NS_SWIFT_NAME(alert(_:_:));

+ (nonnull instancetype)alertWithTitle:(nullable NSString *)title message:(nullable NSString *)message firstText:(nullable NSString *)firstText firstHandler:(nullable UIAlertActionHandler)firstHandler
NS_SWIFT_NAME(alert(_:_:firstText:firstHandler:));

+ (nonnull instancetype)alertWithTitle:(nullable NSString *)title message:(nullable NSString *)message firstText:(nullable NSString *)firstText firstHandler:(nullable UIAlertActionHandler)firstHandler  secondText:(nullable NSString *)secondText secondHandler:(nullable UIAlertActionHandler)secondHandler
NS_SWIFT_NAME(alert(_:_:firstText:firstHandler:secondText:secondHandler:));

+ (nonnull instancetype)actionSheetWithTitle:(nullable NSString *)title message:(nullable NSString *)message cancelText:(nullable NSString *)cancelText
                                     cancelHandler:(nullable UIAlertActionHandler)cancelHandler actions:(nullable NSArray<UIAlertAction*>*)actions
NS_SWIFT_NAME(actionSheet(_:_:cancelText:cancelHandler:actions:));

+ (nonnull instancetype)actionSheetWithTitle:(nullable NSString *)title message:(nullable NSString *)message actions:(nullable NSArray<UIAlertAction*>*)actions
NS_SWIFT_NAME(actionSheet(_:_:actions:));


@end
