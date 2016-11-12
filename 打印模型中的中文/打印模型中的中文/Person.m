//
//  Person.m
//  打印模型中的中文
//
//  Created by apple on 16/11/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@interface Person()

@end
// 用来盛放所有属性名的数组
static NSMutableArray *_propertiesName;
@implementation Person
+ (void)initialize
{
    _propertiesName = [NSMutableArray array];
    
    unsigned int outCount = 0;
   Ivar *ivars = class_copyIvarList([Person class], &outCount);
    
    // 遍历 获得每一个属性
    for (int i = 0; i < outCount; i++) {
        Ivar ivar = ivars[i];
        
        NSString *name = [[NSString alloc]initWithUTF8String: ivar_getName(ivar)];
    
        NSLog(@"%@",name);
        [_propertiesName addObject:name];
    }
}

/**
重写 description
 @return 想要打印的数据拼接
 */
- (NSString *)description
{
    NSString *result = [NSString stringWithFormat:@"\n%p",self];
    
    for (int i = 0; i < _propertiesName.count; i++) {
        
     id  object = [self valueForKey:_propertiesName[i]];
        result =  [NSString stringWithFormat:@"%@\n%@",result,object];
    }
    return result;
}

@end
