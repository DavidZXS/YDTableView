//
//  ZZTableView.h
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import <UIKit/UIKit.h>
#import "ZZCellViewModelProtocol.h"
#import "ZZSectionModel.h"

@protocol ZZTableViewDelegate;


@interface ZZTableView : UITableView
/// zzdelegate
@property (nonatomic, weak) id<ZZTableViewDelegate> zzdelegate;

/// 构建方法
/// @param delegate 是指zzdelegate
/// 默认是UITableViewStylePlain
- (instancetype)initWithDelegate:(id<ZZTableViewDelegate>)delegate;


/// 初始化
/// @param delegate zzdelegate
/// @param style UITableViewStyle
- (instancetype)initWithDelegate:(id<ZZTableViewDelegate>)delegate
                  tableViewStyle:(UITableViewStyle)style;

@end

@protocol ZZTableViewDelegate <NSObject>
@optional
/// 多组构建数据
- (NSArray <ZZSectionModel*>*)tableViewWithMutilSectionDataArray;

/// 单组构建数据
- (NSArray <id<ZZCellViewModel>>*)tableViewWithSigleSectionDataArray;


/// cell点击事件
/// @param data cell数据模型
/// @param indexPath indexPath
- (void)tableViewDidSelectedCellWithDataModel:(id)data indexPath:(NSIndexPath *)indexPath;
@end


