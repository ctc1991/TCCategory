#import "TCCategory.h"

@interface UIViewController (Navi)

@property (nonatomic, strong, readonly) UIButton *leftBtn;
@property (nonatomic, strong, readonly) UIButton *rightBtn;

- (void)setLeftBtn:(NSString *)title image:(NSString *)image action:(SEL)action;
- (void)setRightBtn:(NSString *)title image:(NSString *)image action:(SEL)action;
- (void)setNavigationBarColor:(UIColor *)color;
- (void)setNavigationBarLine:(UIColor *)color;
- (void)removeNavigationBarLine;
- (void)titleLbl:(NSString *)title color:(UIColor *)color;

@end
