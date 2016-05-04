//
//  ObsceneTextView.h
//  🍨TextView++Placeholder🍧
//
//  Created by Yesi on 16/5/3.
//  Copyright © 2016年 Yesi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObsceneTextView : UITextView<UITextViewDelegate>
/** placeholder Color */
@property (nonatomic, strong) UIColor *placeholderColor;
/** trueTextColor */
@property (nonatomic, strong) UIColor *trueTextColor;
// 字体什么的属性可以自己扩展
@end
