//
//  RCTTextInputViewManager.m
//  RNKeyboardTest
//
//  Created by newfun on 16/6/30.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTTextInputViewManager.h"
#import "RCTUIManager.h"
#import "TextInputView.h"

@interface RCTTextInputViewManager ()<TextInputViewDelegate>

@end

@implementation RCTTextInputViewManager

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(onInputChange, RCTBubblingEventBlock)
RCT_EXPORT_METHOD(deleteContents:(nonnull NSNumber *)reactTag)
{
  [self.bridge.uiManager addUIBlock:^(__unused RCTUIManager *uiManager, NSDictionary<NSNumber *, TextInputView *> *viewRegistry) {
    TextInputView *inputView = viewRegistry[reactTag];
    if (![inputView isKindOfClass:[TextInputView class]]) {
      RCTLogError(@"Invalid view returned from registry, expecting TextInputView, got: %@", inputView);
    } else {
      [inputView deleteContent];
    }
  }];
  
}

- (UIView *)view
{
  TextInputView* textInputView = [[TextInputView alloc] init];
  textInputView.delegate = self;
  return textInputView;
}

-(void)getInputString:(NSString *)string textInputView:(TextInputView *)textInputView {
  
  if (!textInputView.onInputChange) {
    return;
  }
  
  textInputView.onInputChange(@{@"inputSting":string});
  
}

@end
