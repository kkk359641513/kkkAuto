//
//  RootViewController.m
//  kkkAutoLayout
//
//  Created by kkk on 15/12/21.
//  Copyright © 2015年 kkk. All rights reserved.
//

#import "RootViewController.h"
#import "StackViewViewController.h"
#import "TableViewController.h"
#import "HeightAutoViewController.h"
#import "ScrollViewController.h"
#import "ASpectViewController.h"
#import "ImageViewController.h"

@interface RootViewController ()<UITableViewDelegate>

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
        self.edgesForExtendedLayout = UIRectEdgeNone;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            StackViewViewController *stack = [StackViewViewController new];
            [self.navigationController pushViewController:stack animated:YES];
        }
            break;
        case 1:
        {
            TableViewController *stack = [TableViewController new];
            [self.navigationController pushViewController:stack animated:YES];
        }
            break;
        case 2:
        {
            HeightAutoViewController *stack = [HeightAutoViewController new];
            [self.navigationController pushViewController:stack animated:YES];
        }
            break;
        case 3:
        {
            ScrollViewController *stack = [ScrollViewController new];
            [self.navigationController pushViewController:stack animated:YES];
        }
            break;
        case 4:
        {
            ASpectViewController *stack = [ASpectViewController new];
            [self.navigationController pushViewController:stack animated:YES];
        }
            break;
            
        default:
            break;
    }
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
