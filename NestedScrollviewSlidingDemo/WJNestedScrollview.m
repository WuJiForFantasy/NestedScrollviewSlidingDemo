//
//  WJNestedScrollview.m
//  NestedScrollviewSlidingDemo
//
//  Created by 幻想无极（谭启宏） on 16/7/27.
//  Copyright © 2016年 幻想无极（谭启宏）. All rights reserved.
//

#import "WJNestedScrollview.h"


@interface WJNestedScrollview ()
@end

@implementation WJNestedScrollview



+ (void)scrolldidscrollWithScrollView:(UIScrollView *)scrollView superView:(UIScrollView *)superView {
    
    //父视图在它的父视图上面的位置
    //向上滑动
    if (superView.frame.origin.y > NAV_HEIGHT-HEIAD_HEIGHT) {
        //改变父视图的位置
        superView.center = CGPointMake(superView.center.x, superView.center.y-scrollView.contentOffset.y);
        //到达顶部强制改变父视图的位置
        if (superView.frame.origin.y > NAV_HEIGHT) {
            superView.frame = CGRectMake(0, NAV_HEIGHT, CGRectGetWidth(superView.bounds),CGRectGetHeight(superView.bounds));
            
        }
        //滚动置顶
        scrollView.contentOffset = CGPointZero;
    }
    //向下滑动
    else {
        //内部scrollview偏移的量就是外部视图偏移的量，并将内部视图偏移还原
        if (scrollView.contentOffset.y <= 0) {
            superView.center = CGPointMake(superView.center.x, superView.center.y-scrollView.contentOffset.y);
            scrollView.contentOffset = CGPointZero;
        }
        //强制还原位置
        else {
            [UIView animateWithDuration:0.1 animations:^{
                superView.frame = CGRectMake(0, NAV_HEIGHT-HEIAD_HEIGHT, CGRectGetWidth(superView.bounds),CGRectGetHeight(superView.bounds));
                
            }];
        }
    }
}

+ (void)superScrolldidscrollWithScrollView:(UIScrollView *)scrollView  {
    if (scrollView.frame.origin.y >= NAV_HEIGHT) {
        
    }else {
        if (scrollView.frame.origin.y>-HEIAD_HEIGHT+NAV_HEIGHT) {
            NSLog(@"%f",scrollView.frame.origin.y);
            scrollView.center = CGPointMake(scrollView.center.x, scrollView.center.y-scrollView.contentOffset.y);
            if (scrollView.frame.origin.y >= NAV_HEIGHT) {
                scrollView.frame = CGRectMake(0, NAV_HEIGHT, CGRectGetWidth(scrollView.bounds),CGRectGetHeight(scrollView.bounds));
                
            }
            scrollView.contentOffset = CGPointZero;
        }
    }
}


@end
