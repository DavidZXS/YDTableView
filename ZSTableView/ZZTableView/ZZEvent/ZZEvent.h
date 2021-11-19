//
//  ZZEvent.h
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class UIResponder;

@protocol ZZEvent <NSObject>
@property (nonatomic, strong) __kindof UIResponder *sender;
@property (nonatomic, strong) NSIndexPath *indexPath;
@property (nonatomic, strong) NSMutableDictionary *userInfo;
@end


@interface ZZEvent : NSObject<ZZEvent>

@end

NS_ASSUME_NONNULL_END
