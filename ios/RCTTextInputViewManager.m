//
//  RCTTextInputViewManager.m
//  RNKeyboardTest
//
//  Created by newfun on 16/6/30.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTTextInputViewManager.h"

@implementation RCTTextInputViewManager

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(onStringChange, RCTBubblingEventBlock)


- (UIView *)view
{
  TextInputView* textInputView = [[TextInputView alloc] init];
  textInputView.delegate = self;
  return textInputView;
}

-(void)getInputString:(NSString *)string textInputView:(TextInputView *)textInputView {
  
  if (!textInputView.onStringChange) {
    return;
  }
  
  textInputView.onStringChange(@{@"inputSting":string});
  
}

@end
