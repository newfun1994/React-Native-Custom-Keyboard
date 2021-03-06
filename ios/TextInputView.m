//
//  TextInputView.m
//  RNKeyboard
//
//  Created by newfun on 16/6/27.
//  Copyright © 2016年 newfun. All rights reserved.
//

#import "TextInputView.h"
#import "RNCustomNumKeyboard.h"


@interface TextInputView()<UITextFieldDelegate,RNCustomNumKeyboardDelegate>

@property (nonatomic, strong) UITextField *textField;

@end

@implementation TextInputView

//js中设置style属性,在渲染组件时一些相应的参数会传递到drawRect()方法中，所以在改方法内初始化一些需要的尺寸的控件。
//这样写不规范，但是比较方便


- (void)drawRect:(CGRect)rect {
  _textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, rect.size.width, rect.size.height)];
  _textField.delegate = self;
  [self addSubview:_textField];
  [_textField addTarget:self action:@selector(textFielddidChanged) forControlEvents:UIControlEventEditingChanged];
  
  RNCustomNumKeyboard *keyboardView = [[NSBundle mainBundle] loadNibNamed:@"RNCustomNumKeyboard" owner:nil options:nil][0];
  keyboardView.delegate = self;
  _textField.inputView = keyboardView;
}

- (instancetype)init {
  self = [super init];
  if (self) {
    
  }
  return self;
}

- (void)textFielddidChanged{
  [_delegate getInputString:_textField.text textInputView:self];
}


- (void)numberButtonClicked:(NSInteger)number {
  [_textField insertText:[@(number) stringValue]];
}

- (void)delectButtonClicked {
  [_textField deleteBackward];
}

- (void)hiddenButtonClicked {
  [self endEditing:YES];
}

- (void)deleteContent {
  _textField.text = @"";
}

@end
