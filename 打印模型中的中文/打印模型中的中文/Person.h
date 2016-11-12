//
//  Person.h
//  打印模型中的中文
//
//  Created by apple on 16/11/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


/**
 名字
 */
@property (nonatomic, copy) NSString *name;


/**
 年龄
 */
//@property (nonatomic, copy) NSString *age;

@property (nonatomic, assign) int age;
/**
 狗的名字
 */
@property (nonatomic, copy) NSArray *dogName;

@end
