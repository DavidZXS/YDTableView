//
//  UIResponder+ZZEvent.h
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import <UIKit/UIKit.h>
#import "ZZEvent.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIResponder (ZZEvent)

- (void)respondEvent:(NSObject<ZZEvent> *)event;

@end

NS_ASSUME_NONNULL_END
