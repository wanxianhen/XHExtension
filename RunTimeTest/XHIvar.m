//
//  XHIvar.m
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/24.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import "XHIvar.h"

@implementation XHIvar

/**
 *  初始化
 *
 *  @param srcObject 来源于哪个对象
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithSrcObject:(id)srcObject
{
    if (self = [super init]) {
        _srcObject = srcObject;
    }
    return self;
}

- (void)setSrcClass:(Class)srcClass
{
    _srcClass = srcClass;
    
    _srcClassFromFoundation = [NSStringFromClass(srcClass) hasPrefix:@"NS"];
    
}

/**
 *  初始化
 *
 *  @param ivar      成员变量
 *  @param srcObject 哪个对象的成员变量
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithIvar:(Ivar)ivar srcObject:(id)srcObject
{
    if (self = [self initWithSrcObject:srcObject]) {
        self.ivar = ivar;
    }
    return self;
}

/**
 *  设置成员变量
 */
- (void)setIvar:(Ivar)ivar
{
    _ivar = ivar;
    
    // 1.成员变量名
    _name = [NSString stringWithUTF8String:ivar_getName(ivar)];
    

    
    // 2.属性名
    if ([_name hasPrefix:@"_"]) {
        _propertyName = [_name stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:@""];
    } else {
        _propertyName = _name;
    }
    // 3.成员变量的类型符
    NSString *code = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];

    _type = [[XHType alloc] initWithCode:code];
    
//        NSLog(@"---%@-%@---", _name, code);
    
}

/**
 *  获得成员变量的值
 */
- (id)value
{
    if (_type.KVCDisabled) return [NSNull null];
    return [_srcObject valueForKey:_propertyName];
}

/**
 *  设置成员变量的值
 */
- (void)setValue:(id)value
{
    if (_type.KVCDisabled) return;
    [_srcObject setValue:value forKey:_propertyName];
}
@end
