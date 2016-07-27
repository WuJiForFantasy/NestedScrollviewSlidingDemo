//
//  WJNestedScrollview.h
//  NestedScrollviewSlidingDemo
//
//  Created by 幻想无极（谭启宏） on 16/7/27.
//  Copyright © 2016年 幻想无极（谭启宏）. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define HEIAD_HEIGHT 100
#define NAV_HEIGHT 0
/**嵌套scrollview---适用于一个主控制包含几个子控制器的情况*/
@interface WJNestedScrollview : NSObject

/**
 *  子滚动视图滚动的时候
 *
 *  @param scrollView 子滚动视图
 *  @param superView  父滚动视图
 */
+ (void)scrolldidscrollWithScrollView:(UIScrollView *)scrollView superView:(UIScrollView *)superView;

/**
 *  父滚动视图滚动的时候
 *
 *  @param scrollView 父滚动视图
 */
+ (void)superScrolldidscrollWithScrollView:(UIScrollView *)scrollView;

@end
