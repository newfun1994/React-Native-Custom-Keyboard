//
//  TextInputView.h
//  RNKeyboard
//
//  Created by newfun on 16/6/27.
//  Copyright © 2016年 newfun. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "RCTComponent.h"
#import "UIView+React.h"


@protocol TextInputViewDelegate;

@interface TextInputView : UIView

@property (nonatomic, weak) id<TextInputViewDelegate> delegate;
@property (nonatomic, copy) RCTBubblingEventBlock onInputChange;

- (void)deleteContent;

@end

@protocol TextInputViewDelegate
- (void)getInputString:(NSString*)string textInputView:(TextInputView*)textInputView;
@end
