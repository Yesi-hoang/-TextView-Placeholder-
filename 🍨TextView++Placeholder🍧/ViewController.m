//
//  ViewController.m
//  🍨TextView++Placeholder🍧
//
//  Created by Yesi on 16/5/3.
//  Copyright © 2016年 Yesi. All rights reserved.
//

#import "ViewController.h"
#import "ObsceneTextView.h"
#import "DrawTextView.h"
#import "XMGPlaceholderTextView.h"
#import "UITextView+Placeholder.h"
#import "RPFloatingPlaceholderTextView.h"

@interface ViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet ObsceneTextView *textView1;
@property (weak, nonatomic) IBOutlet DrawTextView *textView2;
@property (weak, nonatomic) IBOutlet XMGPlaceholderTextView *textView3;
@property (weak, nonatomic) IBOutlet UITextView *textView4;
@property (weak, nonatomic) IBOutlet RPFloatingPlaceholderTextView *textView5;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // textView1 占位文字封装在ObsceneTextView里面
    
    // textView2 占位文字设置
    self.textView2.placeholder = @"画文字法：                                                     使用DrawRect把占位文字画上去，使用通知，当有实际内容的时候就不画。";
    self.textView2.placeholderColor = [UIColor magentaColor];
    
    // textView3 占位文字设置
    self.textView3.placeholder = @"Label法：                                                     使用一个label作为占位文字的载体，当没有内容时显示label，有内容时隐藏label";
    self.textView3.placeholderColor = [UIColor cyanColor];
   
    // textView4 占位文字设置
    self.textView4.backgroundColor = [UIColor greenColor];
    [self.textView4 addPlaceHolder:@"高逼格法：                                                     分类中使用运行时添加一个textView作为placeholder。代理控制有内容显示没内容隐藏。" placeHoloderTextColor:[UIColor blueColor]];
   
    // textView5 占位文字设置 href:https://github.com/iwasrobbed/RPFloatingPlaceholders
    self.textView5.placeholder = @"使用第三方 占位文字设置 href:https://github.com/iwasrobbed/RPFloatingPlaceholders ";
    self.textView5.animationDirection = RPFloatingPlaceholderAnimateUpward;
    // 失去焦点
    self.textView5.floatingLabelActiveTextColor = [UIColor orangeColor];
    // 获得焦点  好像失效了
    self.textView5.floatingLabelInactiveTextColor = [UIColor redColor];
}


@end
