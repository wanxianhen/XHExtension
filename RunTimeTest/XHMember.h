//
//  XHMember.h
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/24.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>

@interface XHMember : NSObject
{
    __weak id _srcObject;
    Class _srcClass;
    NSString *_name;
}
/** 成员来源于哪个类（可能是父类） */
@property (nonatomic, assign) Class srcClass;
/** 成员来源类是否是Foundation框架的 */
@property (nonatomic, readonly, getter = isSrcClassFromFoundation) BOOL srcClassFromFoundation;

/** 成员来源于哪个对象 */
@property (nonatomic, weak, readonly) id srcObject;

/** 成员名 */
@property (nonatomic, copy, readonly) NSString *name;

/**
 *  初始化
 *
 *  @param srcObject 来源于哪个对象
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithSrcObject:(id)srcObject;
@end
