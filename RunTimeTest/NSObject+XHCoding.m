//
//  NSObject+XHCoding.m
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/24.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import "NSObject+XHCoding.h"

@implementation NSObject (XHCoding)
/**
 *  编码（将对象写入文件中）
 */
- (void)encode:(NSCoder *)encoder
{
    [self enumerateIvarsWithBlock:^(XHIvar *ivar, BOOL *stop) {
//        if (ivar.isSrcClassFromFoundation) return;//已经到根类NSObject，以NS开头，那么遍历ivar得到的是isa指针属性无需处理
        if ([ivar.name isEqualToString:@"isa"]) return ;
            
        [encoder encodeObject:ivar.value forKey:ivar.name];
    }];
}

/**
 *  解码（从文件中解析对象）
 */
- (void)decode:(NSCoder *)decoder
{
    [self enumerateIvarsWithBlock:^(XHIvar *ivar, BOOL *stop) {
//        if (ivar.isSrcClassFromFoundation) return;//已经到根类NSObject，以NS开头，那么遍历ivar得到的是isa指针属性无需处理
        if ([ivar.name isEqualToString:@"isa"]) return ;
        ivar.value = [decoder decodeObjectForKey:ivar.name];
    }];
}

@end
