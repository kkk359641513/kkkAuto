//
//  StackViewViewController.m
//  kkkAutoLayout
//
//  Created by kkk on 15/12/21.
//  Copyright © 2015年 kkk. All rights reserved.
//

#import "StackViewViewController.h"

@interface StackViewViewController ()

@end

@implementation StackViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"StackView";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    //图片宽高固定
    //1左侧第一空白view:距左边距给固定宽高
    //2每个都设置距左距右
    //3四个空白view等高等宽
    //4第一个空白view宽大于等于20
    
    
    
    //图片之间的间距固定
    //前三条与上边一样 第四条改为第一张图片宽大于等于80
    
    
    //StackView设置空白等高等宽 图片等高等宽
    //1 图片固定宽高:给图片固定宽
    //2 间距固定：给第一个空白view宽 第一个图片大于等于80
    
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
