//
//  RNCustomNumKeyboard.m
//  RNKeyboard
//
//  Created by newfun on 16/6/27.
//  Copyright © 2016年 newfun. All rights reserved.
//

#import "RNCustomNumKeyboard.h"


@implementation RNCustomNumKeyboard


- (void)layoutSubviews
{
    [super layoutSubviews];
    self.frame = CGRectMake(0, 0, Screen_Width, Keyboard_Height);
}

- (IBAction)numButtonClick:(UIButton *)sender
{
    [self.delegate numberButtonClicked:sender.tag];
}

- (IBAction)delectButtonClick:(UIButton *)sender
{
    [self.delegate delectButtonClicked];
}

- (IBAction)hiddenButtonClicked:(id)sender
{
    [self.delegate hiddenButtonClicked];
}

@end
