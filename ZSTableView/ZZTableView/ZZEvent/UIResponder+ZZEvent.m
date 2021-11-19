//
//  UIResponder+ZZEvent.m
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import "UIResponder+ZZEvent.h"

@implementation UIResponder (ZZEvent)

- (void)respondEvent:(NSObject<ZZEvent> *)event {
    [self.nextResponder respondEvent:event];
}

@end
