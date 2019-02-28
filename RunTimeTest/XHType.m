//
//  XHType.m
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/24.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import "XHType.h"

/**
 *  成员变量类型（属性类型）
 */
NSString *const  XHTypeInt = @"i";
NSString *const  XHTypeFloat = @"f";
NSString *const  XHTypeDouble = @"d";
NSString *const  XHTypeLong = @"q";
NSString *const  XHTypeLongLong = @"q";
NSString *const  XHTypeUnsignedLong = @"Q";//无符号型，就是对应的大写字母
NSString *const  XHTypeChar = @"c";
NSString *const  XHTypeBOOL = @"B";
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




@implementation XHType
- (instancetype)initWithCode:(NSString *)code
{
    if (self = [super init]) {
        self.code = code;
    }
    return self;
}

/** 类型标识符 */
- (void)setCode:(NSString *)code
{
    _code = code;
    
    if (_code.length == 0 || [_code isEqualToString:XHTypeSEL] ||
        [_code isEqualToString:XHTypeIvar] ||
        [_code isEqualToString:XHTypeMethod]) {
        _KVCDisabled = YES;
    } else if ([_code hasPrefix:@"@"] && _code.length > 3) {
        // 去掉@"和" ，截取中间的类型名称
        _code = [_code substringFromIndex:2];
        _code = [_code substringToIndex:_code.length - 1];
        _typeClass = NSClassFromString(_code);
        
        _fromFoundation = [_code hasPrefix:@"NS"];
    }
    
//    NSLog(@"%@",_code);
}
@end
