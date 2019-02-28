//
//  NSObject+XHMember.h
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/24.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import "XHIvar.h"

@interface NSObject (XHIvar)

/**
 *  遍历所有的成员变量
 */
- (void)enumerateIvarsWithBlock:(IvarsBlock)block;

/**
 *  遍历所有的类
 */
- (void)enumerateClassesWithBlock:(ClassesBlock)block;

@end
