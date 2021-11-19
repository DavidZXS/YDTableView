//
//  ZZTestCell.m
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import "ZZTestCell.h"
#import "ZZTestCellViewModel.h"

@interface ZZTestCell ()

@property (nonatomic, strong) UILabel *titleLbl;

@end

@implementation ZZTestCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor.orangeColor colorWithAlphaComponent:0.5];
        [self initUI];
    }
    return self;
}

- (void) initUI{
    self.titleLbl = [[UILabel alloc] initWithFrame:CGRectMake(100, 30, 100, 40)];
    _titleLbl.textColor = [UIColor blueColor];
    _titleLbl.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_titleLbl];
}

- (void)zz_setData:(ZZTestCellViewModel *)data {
    self.titleLbl.text = data.title;
    self.imageView.image = data.headerImage;
    
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
