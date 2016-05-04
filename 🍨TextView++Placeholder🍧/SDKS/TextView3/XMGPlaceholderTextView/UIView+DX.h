//
//  UIView+DX.h
//  DX彩票
//
//  Created by 李东喜 on 15/9/23.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DX)

// 分类添加成员变量,不会自动生成set和get方法,只会生成方法的声明;
@property (nonatomic,assign) CGFloat height;

@property (nonatomic,assign) CGFloat width;

@property (nonatomic,assign) CGFloat x;

@property (nonatomic,assign) CGFloat y;

@property (nonatomic, assign) CGSize size;

@end
