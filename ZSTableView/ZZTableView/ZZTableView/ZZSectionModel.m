//
//  ZZSectionModel.m
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import "ZZSectionModel.h"

@implementation ZZSectionModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _itemsArray = [[NSMutableArray alloc]init];
        _sectionHeaderHeight = CGFLOAT_MIN;
        _sectionFooterHeight = CGFLOAT_MIN;
    }
    return self;
}

@end
