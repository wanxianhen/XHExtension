//
//  NSObject+XHMember.m
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/24.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import "NSObject+XHIvar.h"

@implementation NSObject (XHIvar)

/**
 *  遍历所有的成员变量
 */
- (void)enumerateIvarsWithBlock:(IvarsBlock)block
{
    [self enumerateClassesWithBlock:^(__unsafe_unretained Class c, BOOL *stop) {
        // 1.获得所有的成员变量
        unsigned int outCount = 0;
        
        Ivar *ivars = class_copyIvarList(c, &outCount);
        //class_copyIvarList返回所有属性（包括类拓展里大括号里面私有属性和@property声明的属性），但是，不会包括（遍历）父类的属性。
        //根类NSObject调用class_copyIvarList返回isa指针属性
        //class_copyPropertyList只返回@property声明的属性
        
        // 2.遍历每一个成员变量
        for (int i = 0; i<outCount; i++) {
            XHIvar *ivar = [[XHIvar alloc] initWithIvar:ivars[i] srcObject:self];
            ivar.srcClass = c;
            block(ivar, stop);
            
//            NSLog(@"%@,strClass==%@",[NSString stringWithUTF8String:ivar_getName(ivars[i ])], NSStringFromClass(c ));
//            NSLog(@"%@,%@",ivar.name,ivar.propertyName);
        }
        // 3.释放内存
        free(ivars);
    }];
}


/**
 *  遍历所有的类
 */
- (void)enumerateClassesWithBlock:(ClassesBlock)block
{
    // 1.没有block就直接返回
    if (block == nil) return;
    
    // 2.停止遍历的标记
    BOOL stop = NO;
    
    // 3.当前正在遍历的类
    Class c = [self class];
    
    // 4.开始遍历每一个类
    while (c && !stop) {
        // 4.1.执行操作
        block(c, &stop);
        
        // 4.2.获得父类
        c = class_getSuperclass(c);
    }
}

@end
