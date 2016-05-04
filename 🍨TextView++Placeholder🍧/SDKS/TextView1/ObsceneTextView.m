//
//  ObsceneTextView.m
//  🍨TextView++Placeholder🍧
//
//  Created by Yesi on 16/5/3.
//  Copyright © 2016年 Yesi. All rights reserved.
//

#import "ObsceneTextView.h"

@implementation ObsceneTextView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.delegate = self;
    }
    return self;
}

- (void)awakeFromNib{
    [super awakeFromNib];
    self.delegate = self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self =[super initWithCoder:aDecoder]) {
        self.delegate = self;
    }
    return self;
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    
    if ([self.text isEqualToString:@"猥琐法：                                                     把UITextView的text当placeholder使用。但是当文字和placeholder一致时失效。"]) {
        self.text = @"";
        if (self.trueTextColor) {
            self.textColor = [UIColor lightGrayColor];
        }
    }
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    if (self.text.length<1) {
        self.text = @"猥琐法：                                                     把UITextView的text当placeholder使用。但是当文字和placeholder一致时失效。";
        if (self.placeholderColor) {
            self.textColor = [UIColor blackColor];
        }
    }
}

@end
