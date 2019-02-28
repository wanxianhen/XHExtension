//
//  XHType.h
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/24.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  类型（属性类型）
 */
//extern NSString *const  XHTypeInt;
//extern NSString *const  XHTypeFloat;
//extern NSString *const  XHTypeDouble;
//extern NSString *const  XHTypeLong;
//extern NSString *const  XHTypeLongLong;
//extern NSString *const  HTypeUnsignedLong;
//extern NSString *const  XHTypeChar;
//extern NSString *const  XHTypeBOOL;
//extern NSString *const  XHTypePointer;
//
//extern NSString *const  XHTypeIvar;
//extern NSString *const  XHTypeMethod;
//extern NSString *const  XHTypeBlock;
//extern NSString *const  XHTypeClass;
//extern NSString *const  XHTypeSEL;
//extern NSString *const  XHTypeId;

/**
 *  返回值类型
 */
//extern NSString *const  XHReturnTypeVoid;
//extern NSString *const  XHReturnTypeObject;


/**
 *  包装一种类型
 */
@interface XHType : NSObject
/** 类型标识符 */
@property (nonatomic, copy) NSString *code;

/** 对象类型（如果是基本数据类型，此值为nil） */
@property (nonatomic, assign, readonly) Class typeClass;

/** 类型是否来自于Foundation框架，比如NSString、NSArray */
@property (nonatomic, readonly, getter = isFromFoundation) BOOL fromFoundation;
/** 类型是否不支持KVC */
@property (nonatomic, readonly, getter = isKVCDisabled) BOOL KVCDisabled;

/**
 *  初始化一个类型对象
 *
 *  @param code 类型标识符
 */
- (instancetype)initWithCode:(NSString *)code;

@end
