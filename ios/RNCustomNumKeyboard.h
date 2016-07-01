//
//  RNCustomNumKeyboard.h
//  RNKeyboard
//
//  Created by newfun on 16/6/27.
//  Copyright © 2016年 newfun. All rights reserved.
//

#import <UIKit/UIKit.h>
#define Screen_Width [UIScreen mainScreen].bounds.size.width
#define Screen_Height [UIScreen mainScreen].bounds.size.height
#define Keyboard_Height 216 * Screen_Width / (Screen_Width>320 ? 320: Screen_Width)

@protocol RNCustomNumKeyboardDelegate <NSObject>

@optional
- (void)numberButtonClicked:(NSInteger)number;
- (void)delectButtonClicked;
- (void)hiddenButtonClicked;

@end

@interface RNCustomNumKeyboard : UIView
@property (nonatomic, weak)id<RNCustomNumKeyboardDelegate> delegate;

@end
