//
//  RCTTextInputViewManager.m
//  RNKeyboardTest
//
//  Created by newfun on 16/6/30.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTTextInputViewManager.h"
#import "TextInputView.h"

@implementation RCTTextInputViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [[TextInputView alloc] init];
}

@end
