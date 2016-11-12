//
//  ViewController.m
//  打印模型中的中文
//
//  Created by apple on 16/11/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [[Person alloc]init];
    p.name = @"张三";
//    p.age = @"18";
    [p setValue:@(18) forKey:@"_age"];
    p.dogName = @[@"小狗1",@"小狗2"];
    
    Person *p1 = [[Person alloc]init];
    p1.name = @"李四";
    p1.age = 34;
    p1.dogName = @[@"小狗3",@"小狗3"];

    Person *p2 = [[Person alloc]init];
    p2.name = @"王五";
    p2.age = 14;

    Person *p3 = [[Person alloc]init];
    p3.name = @"孙刘";
    p3.age = 40;

    NSArray *arr = @[p,p1,p2,p3];
    
    for (int i = 0; i < arr.count; i++) {
        Person *p0 = arr[i];

        
        NSLog(@"%@",p0);
    }

}


@end
