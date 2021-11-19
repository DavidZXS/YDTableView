//
//  ZZSectionModel.h
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import <Foundation/Foundation.h>
#import "ZZCellViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZZSectionModel : NSObject
/// item数组：元素必须是遵守RWCellViewModel协议
@property (nonatomic, strong) NSMutableArray <id<ZZCellViewModel>>*itemsArray;

/// section头部高度
@property (nonatomic, assign) CGFloat  sectionHeaderHeight;
/// section尾部高度
@property (nonatomic, assign) CGFloat  sectionFooterHeight;
/// sectionHeaderView：rw_setData:是赋值方法
@property (nonatomic, strong) Class headerReuseClass;
/// sectionFooterView： rw_setData:是赋值方法
@property (nonatomic, strong) Class footerReuseClass;

/// headerData
@property (nonatomic, strong) id headerData;
/// footerData
@property (nonatomic, strong) id footerData;
@end

NS_ASSUME_NONNULL_END
