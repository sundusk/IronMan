//
//  IMDiaryAlertView.h
//  IronMan
//
//  Created by sundusk on 2018/4/23.
//  Copyright © 2018年 sundusk. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol IMDiaryAlertDelegate <NSObject>

- (void)buttonYesPressed;
- (void)buttonNoPressed;
@end

@interface IMDiaryAlertView : UIView

@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *message;

@property (weak, nonatomic) id<IMDiaryAlertDelegate> delegate;

- (void)showAnimated;
@end
