#import "UITableView+Basic.h"

@implementation UITableView (Basic)

- (void)registerSameNameNib:(NSString *)nib {
    [self registerNib:[UINib nibWithNibName:nib bundle:nil] forCellReuseIdentifier:nib];
}

@end
