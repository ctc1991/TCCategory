#import "UITextField+Basic.h"

@implementation UITextField (Basic)
- (void)leftImageViewForTF:(UIImage *)image ivFrame:(CGRect)frame {
    UIImageView *leftIV = [[UIImageView alloc] initWithFrame:frame];
    leftIV.image = image;
    leftIV.contentMode = UIViewContentModeCenter;
    
    self.leftView = leftIV;
    self.leftViewMode = UITextFieldViewModeAlways;
    self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
}

- (void)leftBlankWithFrame:(CGRect)frame {
    UIView *blankView = [[UIView alloc] initWithFrame:frame];
    self.leftView = blankView;
    self.leftViewMode = UITextFieldViewModeAlways;
    self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
}

- (void)leftViewForTF:(UIView *)view {
    self.leftView = view;
    self.leftViewMode = UITextFieldViewModeAlways;
    self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
}

/** add image in textField leftView */
- (void)setLeftImage:(NSString *)imageName {
    [self setLeftImage:imageName size:CGSizeMake(self.bounds.size.height, self.bounds.size.height)];
}
- (void)setLeftImage:(NSString *)imageName size:(CGSize)size {
    UIImage *img = [UIImage imageNamed:imageName];
    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, (self.bounds.size.height-size.height)/2.0, size.width, size.height)];
    iv.image = img;
    iv.contentMode = UIViewContentModeCenter;
    [self setLeftView:iv];
    [self setLeftViewMode:UITextFieldViewModeAlways];
}
/** add right button */
- (void)setRightImage:(NSString *)imageName selectedImage:(NSString *)selectedImageName target:(id)target action:(SEL)action {
    [self setRightImage:imageName selectedImage:selectedImageName target:target action:action size:CGSizeMake(self.bounds.size.height, self.bounds.size.height)];
}
- (void)setRightImage:(NSString *)imageName selectedImage:(NSString *)selectedImageName target:(id)target action:(SEL)action size:(CGSize)size {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(self.bounds.size.width-size.width, (self.bounds.size.height-size.height)/2.0, size.width, size.height);
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [self setRightView:btn];
    [self setRightViewMode:UITextFieldViewModeAlways];
}
/** text leading space to textField */
- (void)setLeadingSpacing:(CGFloat)leadingSpacing {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, leadingSpacing, self.bounds.size.height)];
    [self setLeftView:view];
    [self setLeftViewMode:UITextFieldViewModeAlways];
}
/** text tailling space to textField */
- (void)setTaillingSpacing:(CGFloat)taillingSpacing {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, taillingSpacing, self.bounds.size.height)];
    [self setRightView:view];
    [self setRightViewMode:UITextFieldViewModeAlways];
}

@end
