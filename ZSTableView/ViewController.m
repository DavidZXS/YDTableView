//
//  ViewController.m
//  ZSTableView
//
//  Created by Cedar on 2021/9/18.
//

#import "ViewController.h"
#import "ZZTableView.h"
#import "ZZTestCellViewModel.h"
#import "ZZTestButtonCellViewModel.h"
#import "UIResponder+ZZEvent.h"

@interface ViewController ()<ZZTableViewDelegate>

@property (nonatomic, strong) ZZTableView *tableView;

@property (nonatomic, strong) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.tableView];
    
    [self testData];
}

#pragma mark - ZZTableView Delegate
- (NSArray<ZZSectionModel *> *)tableViewWithMutilSectionDataArray {
    return self.dataArray;
}

- (void)tableViewDidSelectedCellWithDataModel:(id)data indexPath:(NSIndexPath *)indexPath {
    NSLog(@"section:%ld row:%ld 被点击了",indexPath.section,indexPath.row);
}

#pragma mark - Getter
- (ZZTableView *)tableView {
    if (!_tableView) {
        _tableView = [[ZZTableView alloc]initWithDelegate:self];
        _tableView.zzdelegate = self;
    }
    return _tableView;
}

- (void)respondEvent:(NSObject<ZZEvent> *)event{
    if ([event.sender isKindOfClass:UITableViewCell.class]) {
        NSLog(@"%@",event.userInfo);
    }
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.tableView.frame = self.view.bounds;
}

- (void) testData{
    ZZTestCellViewModel *item1 = [[ZZTestCellViewModel alloc]init];
    item1.title = @"我是大力";
    item1.headerImage = [UIImage imageNamed:@"11.jpg"];
    
    ZZTestCellViewModel *item2 = [[ZZTestCellViewModel alloc]init];
    item2.title = @"我是大力2";
    item2.headerImage = [UIImage imageNamed:@"11.jpg"];
    
    ZZTestCellViewModel *item3 = [[ZZTestCellViewModel alloc]init];
    item3.title = @"我是大力3";
    item3.headerImage = [UIImage imageNamed:@"11.jpg"];
    
    ZZTestButtonCellViewModel *item4 = [[ZZTestButtonCellViewModel alloc]init];
    
    ZZSectionModel *section1 = [[ZZSectionModel alloc]init];
    section1.sectionHeaderHeight  = 100;
    
    ZZSectionModel *section2 = [[ZZSectionModel alloc]init];
    section2.sectionHeaderHeight = 50;
    
    ZZSectionModel *section3 = [[ZZSectionModel alloc]init];
    section3.sectionHeaderHeight = 50;
    
    [section1.itemsArray addObject:item1];
    [section1.itemsArray addObject:item2];
    [section2.itemsArray addObject:item3];
    [section3.itemsArray addObject:item4];
    
    self.dataArray = @[section1,section2,section3];
}

@end
