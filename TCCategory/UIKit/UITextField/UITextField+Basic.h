#import "TCCategory.h"

@interface UITextField (Basic)
/**
 *  设置 TextField 的左边视图为一张图片，自定义图片的大小
 *
 *  @param image 要显示在 TextField 左边的图片
 *  @param frame 图片的 frame
 */
- (void)leftImageViewForTF:(UIImage *)image ivFrame:(CGRect)frame;

/**
 *  给 TextField 设置一个左侧的空白
 *
 *  @param frame 左侧空白的 frame
 */
- (void)leftBlankWithFrame:(CGRect)frame;

/**
 *  设置任意的 view 为 TextField 的左边视图
 *
 *  @param view  要给 TextField 设置的左边视图
 */
- (void)leftViewForTF:(UIView *)view;

/** add image in textField leftView */
- (void)setLeftImage:(NSString *)imageName;
- (void)setLeftImage:(NSString *)imageName size:(CGSize)size;
/** add right button */
- (void)setRightImage:(NSString *)imageName selectedImage:(NSString *)selectedImageName target:(id)target action:(SEL)action;
- (void)setRightImage:(NSString *)imageName selectedImage:(NSString *)selectedImageName target:(id)target action:(SEL)action size:(CGSize)size;
/** text leading space to textField */
- (void)setLeadingSpacing:(CGFloat)leadingSpacing;
/** text tailling space to textField */
- (void)setTaillingSpacing:(CGFloat)taillingSpacing;
@end
