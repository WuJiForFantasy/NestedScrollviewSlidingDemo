//
//  ViewController.m
//  NestedScrollviewSlidingDemo
//
//  Created by 幻想无极（谭启宏） on 16/7/27.
//  Copyright © 2016年 幻想无极（谭启宏）. All rights reserved.
//

#import "ViewController.h"
#import "SubControl.h"
#import "WJNestedScrollview.h"

@interface ViewController ()<UIScrollViewDelegate>

@property (nonatomic,strong)SubControl *subControl;
@property (nonatomic,strong)UIScrollView *scrollView;
@end

@implementation ViewController

- (SubControl *)subControl {
    if (!_subControl) {
        _subControl = [SubControl new];
        _subControl.view.frame = CGRectMake(0, HEIAD_HEIGHT, CGRectGetWidth(self.view.bounds), CGRectGetHeight([UIScreen mainScreen].bounds));
        _subControl.view.backgroundColor = [UIColor yellowColor];
        _subControl.scrollView.delegate = self;
    }
    return _subControl;
}

- (void)dealloc {
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight([UIScreen mainScreen].bounds)+HEIAD_HEIGHT)];
    self.scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.bounds), CGRectGetHeight([UIScreen mainScreen].bounds)+HEIAD_HEIGHT+1);
    [self addChildViewController:self.subControl];
    [self.scrollView addSubview:self.subControl.view];
    [self.view addSubview:self.scrollView];
    self.scrollView.delegate = self;
}

#pragma mark - scrollView

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView == self.scrollView) {
        [WJNestedScrollview superScrolldidscrollWithScrollView:scrollView];
    }else {
        [WJNestedScrollview scrolldidscrollWithScrollView:scrollView superView:self.scrollView]; 
    }
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
