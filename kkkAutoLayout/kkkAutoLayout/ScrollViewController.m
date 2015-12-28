//
//  ScrollViewController.m
//  kkkAutoLayout
//
//  Created by kkk on 15/12/23.
//  Copyright © 2015年 kkk. All rights reserved.
//

#import "ScrollViewController.h"
#import "PureLayout.h"

@interface ScrollViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintsHeight;
@property (weak, nonatomic) IBOutlet UIScrollView *contentScrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.constraintsHeight autoRemove];
    self.constraintsHeight = [self.contentView autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.contentScrollView withMultiplier:2];
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
