//
//  ZZEvent.m
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import "ZZEvent.h"

@implementation ZZEvent
@synthesize indexPath = _indexPath;
@synthesize sender = _sender;
@synthesize userInfo = _userInfo;

- (instancetype)init {
    self = [super init];
    if (self) {
        _userInfo = [NSMutableDictionary dictionary];
    }
    return self;
}

@end
