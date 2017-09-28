//
//  ViewController.m
//  launchpageDome
//
//  Created by 黄坤 on 2017/4/18.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong ,nonatomic) UITableView *listTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"进来了");
    _listTableView =[[UITableView alloc]init];
    _listTableView.delegate=self;
    _listTableView.dataSource=self;
    _listTableView.frame=self.view.bounds;
    [self.view addSubview:_listTableView];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - table view dataSource

//返回多少组数据方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

//每一组返回多少行数据的方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //第0组（section：组的意思）
    if (section == 0) {
        return 3;
    }else if(section == 1){
        return 2;
    }else{
        return 3;
    }
}

//每一行显示的数据方法
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    if (indexPath.section ==0) {
        if (indexPath.row ==0) {
            cell.textLabel.text = @"奥迪";
        }else if (indexPath.row ==1)
            cell.textLabel.text = @"宝马";
        else{
            cell.textLabel.text = @"奔驰";
        }
    }else if (indexPath.section ==1){
        if (indexPath.row ==0) {
            cell.textLabel.text = @"本田";
        }else{
            cell.textLabel.text = @"丰田";
        }
    }else{
        if (indexPath.row ==0) {
            cell.textLabel.text = @"别克";
        }else if (indexPath.row == 1){
            cell.textLabel.text = @"福特";
        }else{
            cell.textLabel.text = @"拖拉机";
        }
    }
    return cell;
}

//返回头部文字
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section ==0) {
        return @"德系品牌";
    }else if (section==1){
        return @"日系品牌";
    }else{
        return @"美系品牌";
    }
}
//返回尾部文字
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if (section ==0) {
        return @"高端大气上档次，世界一流平牌！";
    }else if (section==1){
        return @"日系品牌";
    }else{
        return @"美系品牌";
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
