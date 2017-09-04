#import "UIViewController+Navi.h"

@implementation UIViewController (Navi)

- (UIButton *)leftBtn {
    return self.navigationItem.leftBarButtonItem.customView;
}

- (UIButton *)rightBtn {
    return self.navigationItem.rightBarButtonItem.customView;
}

- (void)setLeftBtn:(NSString *)title image:(NSString *)image action:(SEL)action {
    UIButton *btn = [UIButton new];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn sizeToFit];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}
- (void)setRightBtn:(NSString *)title image:(NSString *)image action:(SEL)action {
    UIButton *btn = [UIButton new];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn sizeToFit];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}
- (void)setNavigationBarColor:(UIColor *)color {
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:color] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[UIImage imageWithColor:UIColor.clearColor size:CGSizeMake(0.5, 0.5)]];
}
- (void)setNavigationBarLine:(UIColor *)color {
    [self.navigationController.navigationBar setShadowImage:[UIImage imageWithColor:color size:CGSizeMake(0.5, 0.5)]];
}
- (void)removeNavigationBarLine {
    [self.navigationController.navigationBar setShadowImage:[UIImage imageWithColor:UIColor.clearColor size:CGSizeMake(0.5, 0.5)]];
}
- (void)titleLbl:(NSString *)title color:(UIColor *)color {
    UILabel *lbl = [UILabel new];
    lbl.text = title;
    lbl.font = [UIFont fontWithName:@"PingFangSC-Semibold" size:18];
    lbl.textColor = color;
    [lbl sizeToFit];
    self.navigationItem.titleView = lbl;
}

@end
