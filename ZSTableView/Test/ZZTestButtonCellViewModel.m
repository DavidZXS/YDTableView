//
//  ZZTestButtonCellViewModel.m
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import "ZZTestButtonCellViewModel.h"
#import "ZZTestButtonCell.h"

@implementation ZZTestButtonCellViewModel
@synthesize cellClass = _cellClass;
@synthesize cellHeight = _cellHeight;

- (instancetype)init {
    self = [super init];
    if (self) {
        _cellClass = ZZTestButtonCell.class;
        _cellHeight = 44;
    }
    return self;
}

@end
