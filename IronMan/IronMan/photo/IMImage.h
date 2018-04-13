//
//  IMImage.h
//  IronMan
//
//  Created by sundusk on 2018/4/4.
//  Copyright © 2018年 sundusk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IMImage : NSObject
// 姓名
@property (copy, nonatomic) NSString *name;

// 年龄
@property (assign, nonatomic) NSString *timea;

// 电话
@property (copy, nonatomic) UIImage *phoneImage;
@end
