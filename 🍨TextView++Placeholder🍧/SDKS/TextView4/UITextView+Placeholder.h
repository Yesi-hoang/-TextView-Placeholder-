//
//  UITextView+Placeholder.h
//  🍨TextView++Placeholder🍧
//
//  Created by Yesi on 16/5/4.
//  Copyright © 2016年 Yesi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (Placeholder)<UITextViewDelegate>
/**
 
 *利用运行时动态添加的属性
 
 */

@property(nonatomic,strong) UITextView *placeHolderTextView;

/**
 
 *设置placeHoloder.placeHoloder颜色默认为灰色
 
 *
 
 *@param placeHolder
 
 */

- (void)addPlaceHolder:(NSString*)placeHolder;

/**
 
 *设置placeHoloder.placeHoloder颜色默认为自定义
 
 *
 
 *@param placeHolderplaceHolder
 
 *@param placeHoloderTextColor自定义颜色
 
 */

- (void)addPlaceHolder:(NSString*)placeHolder placeHoloderTextColor:(UIColor*)placeHoloderTextColor;



@end
