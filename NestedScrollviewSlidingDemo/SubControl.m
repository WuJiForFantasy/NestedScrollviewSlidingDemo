//
//  SubControl.m
//  NestedScrollviewSlidingDemo
//
//  Created by 幻想无极（谭启宏） on 16/7/27.
//  Copyright © 2016年 幻想无极（谭启宏）. All rights reserved.
//

#import "SubControl.h"



@interface SubControl ()

@end

@implementation SubControl

- (void)viewDidLoad {
    [super viewDidLoad];
    _scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    _scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds)+100);
    _scrollView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.scrollView];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
