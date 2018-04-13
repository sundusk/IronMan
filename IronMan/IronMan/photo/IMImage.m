//
//  IMImage.m
//  IronMan
//
//  Created by sundusk on 2018/4/4.
//  Copyright © 2018年 sundusk. All rights reserved.
//

#import "IMImage.h"
#define HMKeyName @"HMKeyName"
#define HMKeyTimea @"HMKeyTimea"
#define HMKeyPhoneImage @"phoneImage"
@implementation IMImage
// NSCoding中的协议方法 -> 通过aCoder设定对应的归档原则!
- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:_name forKey:HMKeyName];
    [aCoder encodeObject:_timea forKey:HMKeyTimea];
    [aCoder encodeObject:_phoneImage forKey:HMKeyPhoneImage];
}

// NSCoding中的协议方法 -> 通过aDecoder设置对应的解档原则
// 解码出来的数据赋值给谁?
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    if (self = [super init]) {
        
        // 读取数据信息
        _name = [aDecoder decodeObjectForKey:HMKeyName];
        _phoneImage = [aDecoder decodeObjectForKey:HMKeyPhoneImage];
        _timea = [aDecoder decodeObjectForKey:HMKeyTimea];
    }
    return self;
    
}
@end
