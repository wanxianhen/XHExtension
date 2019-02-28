//
//  XHMember.m
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/24.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import "XHMember.h"
@implementation XHMember
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

@end
