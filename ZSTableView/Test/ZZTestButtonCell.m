//
//  ZZTestButtonCell.m
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import "ZZTestButtonCell.h"
#import "UIResponder+ZZEvent.h"

@implementation ZZTestButtonCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupSubViews];
    }
    return self;
}


- (void)setupSubViews {
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(screenWidth - 200, 0, 200, 44);
    btn.backgroundColor = UIColor.greenColor;
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [self.contentView addSubview:btn];
}

- (void)btnAction {
    NSLog(@"我被点了");
    
    ZZEvent *event = [[ZZEvent alloc]init];
    event.sender = self;
    [event.userInfo setObject:@"我被点击了" forKey:@"btn"];
    [self.nextResponder respondEvent:event];
}

- (void)zz_setData:(id)data {
    self.backgroundColor = UIColor.lightGrayColor;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
