//
//  XHTypeEncoding.m
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/25.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//
#import <Foundation/Foundation.h>
/**
 *  成员变量类型（属性类型）
 */
NSString *const  XHTypeInt = @"i";
NSString *const  XHTypeFloat = @"f";
NSString *const  XHTypeDouble = @"d";
NSString *const  XHTypeLong = @"q";
NSString *const  XHTypeLongLong = @"q";
NSString *const  XHTypeChar = @"c";
NSString *const  XHTypeBOOL = @"c";
NSString *const  XHTypePointer = @"*";

NSString *const  XHTypeIvar = @"^{objc_ivar=}";
NSString *const  XHTypeMethod = @"^{objc_method=}";
NSString *const  XHTypeBlock = @"@?";
NSString *const  XHTypeClass = @"#";
NSString *const  XHTypeSEL = @":";
NSString *const  XHTypeId = @"@";

/**
 *  返回值类型(如果是unsigned，就是大写)
 */
NSString *const  XHReturnTypeVoid = @"v";
NSString *const  XHReturnTypeObject = @"@";
