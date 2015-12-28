//
//  HeightAutoViewController.m
//  kkkAutoLayout
//
//  Created by kkk on 15/12/23.
//  Copyright © 2015年 kkk. All rights reserved.
//

#import "HeightAutoViewController.h"
#import "HeightAutoTableViewCell.h"

@interface HeightAutoViewController ()
{
    NSMutableArray *_dataArray;
}
@property (weak, nonatomic) IBOutlet UITableView *contentTableView;

@end

@implementation HeightAutoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //随机生成10个长度不一样的字符串
    _dataArray = [NSMutableArray array];
    for (int j=0; j<10; j++) {
        NSMutableString *str = [[NSMutableString alloc]init];
         int x = arc4random() % 21+10;
        for (int i=0; i<x; i++) {
            [str appendString:@"内容"];
        }
        NSLog(@"str______%@",str);
        [_dataArray addObject:str];
    }
    
    //高度自适应两个属性设置
    _contentTableView.estimatedRowHeight = 50;
    
    _contentTableView.rowHeight = UITableViewAutomaticDimension;
    
}


#pragma mark - UITableViewDelegate DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString *cellIdentifier = @"heightAutocell";
    HeightAutoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"HeightAutoTableViewCell" owner:nil options:nil];
        cell = [array objectAtIndex:0];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    cell.contentLabel.text = _dataArray[indexPath.row];
    
    return cell;
    
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 100;
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
