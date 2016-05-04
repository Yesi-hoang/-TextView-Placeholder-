//
//  UITextView+Placeholder.m
//  🍨TextView++Placeholder🍧
//
//  Created by Yesi on 16/5/4.
//  Copyright © 2016年 Yesi. All rights reserved.
//

#import "UITextView+Placeholder.h"
#import <objc/runtime.h>
static const char *phTextView = "placeHolderTextView";

@implementation UITextView (Placeholder)

- (void)setPlaceHolderTextView:(UITextView *)placeHolderTextView {
    objc_setAssociatedObject(self, phTextView, placeHolderTextView,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UITextView*)placeHolderTextView {
    
    return objc_getAssociatedObject(self,phTextView);
    
}

- (void)addPlaceHolder:(NSString*)placeHolder {
    
    [self addPlaceHolder:placeHolder placeHoloderTextColor:[UIColor grayColor]];
    
}

- (void)addPlaceHolder:(NSString *)placeHolder placeHoloderTextColor:(UIColor *)placeHoloderTextColor{
    
    if(![self placeHolderTextView]) {
        
        self.delegate = self;
        
        UITextView *textView = [[UITextView alloc]initWithFrame:self.bounds];
        
        textView.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
        
        textView.font = self.font;
        
        textView.backgroundColor= [UIColor clearColor];
        
        textView.textColor= placeHoloderTextColor;
        
        textView.userInteractionEnabled = NO;
        
        textView.text= placeHolder;
        
        [self addSubview:textView];
        
        [self setPlaceHolderTextView:textView];
        
    }
    
}

# pragma mark - UITextViewDelegate

- (void)textViewDidBeginEditing:(UITextView*)textView {
    
    self.placeHolderTextView.hidden=YES;
    
}

- (void)textViewDidEndEditing:(UITextView*)textView {
    
    if(textView.text && [textView.text isEqualToString:@""]) {
        
        self.placeHolderTextView.hidden=NO;
        
    }
    
}


@end
