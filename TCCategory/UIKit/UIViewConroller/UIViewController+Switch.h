#import "TCCategory.h"

@interface UIViewController (Switch)

// 弹出
- (void)present:(UIViewController *)vc;
- (void)present:(UIViewController *)vc animated:(BOOL)animated;
- (void)present:(UIViewController *)vc completion:(void (^)(void))completion;
- (void)present:(UIViewController *)vc animated:(BOOL)animated completion:(void (^)(void))completion;

// 推出
- (void)push:(UIViewController *)vc;
- (void)pushForTab:(UIViewController *)vc;
- (void)push:(UIViewController *)vc animated:(BOOL)animated;
- (void)pushForTab:(UIViewController *)vc animated:(BOOL)animated;

// 返回
- (void)popVc;
- (void)popVcWithCompletion:(void (^)(void))completion
        NS_SWIFT_NAME(popVcWithCompletion(completion:));
- (void)popVcWithAnimated:(BOOL)animated;
- (void)popVcWithAnimated:(BOOL)animated completion:(void (^)(void))completion;

@end
