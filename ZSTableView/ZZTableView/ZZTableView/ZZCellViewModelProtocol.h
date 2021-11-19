//
//  ZZCellViewModelProtocol.h
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#ifndef ZZCellViewModelProtocol_h
#define ZZCellViewModelProtocol_h

@import UIKit;

@protocol ZZCellViewModel <NSObject>

/// Cell 的类型
@property (nonatomic, strong) Class cellClass;
/// Cell的高度:  0 则是UITableViewAutomaticDimension
@property (nonatomic, assign) CGFloat  cellHeight;

@end

#endif /* ZZCellViewModelProtocol_h */
