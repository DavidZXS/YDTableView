//
//  ZZTestCellViewModel.h
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import <Foundation/Foundation.h>
#import "ZZCellViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZZTestCellViewModel : NSObject<ZZCellViewModel>

@property (nonatomic, copy ) NSString *title;

@property (nonatomic, strong) UIImage *headerImage;


@end

NS_ASSUME_NONNULL_END
