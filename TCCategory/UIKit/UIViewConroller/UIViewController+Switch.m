#import "UIViewController+Switch.h"

@implementation UIViewController (Switch)

// 弹出
- (void)present:(UIViewController *)vc {
    [self present:vc animated:YES];
}
- (void)present:(UIViewController *)vc animated:(BOOL)animated {
    [self present:vc animated:animated completion:nil];
}
- (void)present:(UIViewController *)vc completion:(void (^)(void))completion {
    [self present:vc animated:YES completion:completion];
}
- (void)present:(UIViewController *)vc animated:(BOOL)animated completion:(void (^)(void))completion {
    [self presentViewController:vc animated:animated completion:completion];
}

// 推出
- (void)push:(UIViewController *)vc {
    [self push:vc animated:YES];
}
- (void)pushForTab:(UIViewController *)vc {
    [self pushForTab:vc animated:YES];
}
- (void)push:(UIViewController *)vc animated:(BOOL)animated {
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:animated];
}
- (void)pushForTab:(UIViewController *)vc animated:(BOOL)animated {
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:animated];
    self.hidesBottomBarWhenPushed = NO;
}

// 返回
- (void)popVc {
    [self popVcWithAnimated:YES];
}
- (void)popVcWithCompletion:(void (^)(void))completion {
        [self popVcWithAnimated:YES completion:completion];
}
- (void)popVcWithAnimated:(BOOL)animated {
    [self popVcWithAnimated:animated completion:nil];
}
- (void)popVcWithAnimated:(BOOL)animated completion:(void (^)(void))completion {
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:animated];
    } else {
        [self dismissViewControllerAnimated:animated completion:completion];
    }
}

@end
