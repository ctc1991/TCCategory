#import "UILabel+TwoSizes.h"

@implementation UILabel (TwoSizes)

- (void)setSmallTailing:(CGFloat)fontSize; {
    NSAttributedString *attrString = [[NSAttributedString alloc]initWithString:self.text attributes:@{NSForegroundColorAttributeName : self.textColor, NSFontAttributeName : self.font}];
    NSMutableAttributedString *mAttrString = [attrString mutableCopy];
    [mAttrString addAttribute:NSFontAttributeName value: [UIFont systemFontOfSize:fontSize] range:NSMakeRange(self.text.length-1, 1)];
    [mAttrString addAttributes:@{NSForegroundColorAttributeName :self.textColor} range:NSMakeRange(self.text.length-1, 1)];
    self.attributedText = mAttrString;
}

- (void)setTailingFontSize:(CGFloat)fontSize fromString:(NSString *)string {
	NSRange stringRange = [self.text rangeOfString:string];
	if (stringRange.length > 0) {
		NSAttributedString *attrString = [[NSAttributedString alloc]initWithString:self.text attributes:@{NSForegroundColorAttributeName:self.textColor, NSFontAttributeName:self.font}];
		NSMutableAttributedString *mAttrString = [attrString mutableCopy];
		[mAttrString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:fontSize] range:NSMakeRange(stringRange.location, self.text.length - stringRange.location)];
		self.attributedText = mAttrString;
	}
}

- (void)setBoldFontSize:(CGFloat)fontSize toString:(NSString *)string {
	NSRange stringRange = [self.text rangeOfString:string];
	if (stringRange.length > 0) {
		NSAttributedString *attrString = [[NSAttributedString alloc]initWithString:self.text attributes:@{NSForegroundColorAttributeName:self.textColor, NSFontAttributeName:self.font}];
		NSMutableAttributedString *mAttrString = [attrString mutableCopy];
		[mAttrString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:fontSize] range:NSMakeRange(0, stringRange.location)];
		self.attributedText = mAttrString;
	}
}

- (void)setBoldFontSize:(CGFloat)boldFontSize tailingFontSize:(CGFloat)tailingFontSize divString:(NSString *)string {
	NSRange stringRange = [self.text rangeOfString:string];
	if (stringRange.length > 0) {
		NSAttributedString *attrString = [[NSAttributedString alloc]initWithString:self.text attributes:@{NSForegroundColorAttributeName:self.textColor, NSFontAttributeName:self.font}];
		NSMutableAttributedString *mAttrString = [attrString mutableCopy];
		[mAttrString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:boldFontSize] range:NSMakeRange(0, stringRange.location)];
		[mAttrString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:tailingFontSize] range:NSMakeRange(stringRange.location, self.text.length - stringRange.location)];
		self.attributedText = mAttrString;
	}
}

- (void)setBoldFontSize:(CGFloat)boldFontSize forString:(NSString *)string {
    NSRange stringRange = [self.text rangeOfString:string];
    if (stringRange.length > 0) {
        NSAttributedString *attrString = [[NSAttributedString alloc]initWithString:self.text attributes:@{NSForegroundColorAttributeName:self.textColor, NSFontAttributeName:self.font}];
        NSMutableAttributedString *mAttrString = [attrString mutableCopy];
        [mAttrString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:boldFontSize] range:NSMakeRange(stringRange.location, stringRange.length)];
        self.attributedText = mAttrString;
    }
}

@end
