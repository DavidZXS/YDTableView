//
//  ZZTestCellViewModel.m
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import "ZZTestCellViewModel.h"
#import "ZZTestCell.h"

@implementation ZZTestCellViewModel
@synthesize cellClass = _cellClass;
@synthesize cellHeight = _cellHeight;

- (instancetype)init {
    self = [super init];
    if (self) {
        _cellClass = ZZTestCell.class;
        _cellHeight = 100;
    }
    return self;
}

@end
