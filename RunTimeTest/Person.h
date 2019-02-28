//
//  Person.h
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/26.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+XHCoding.h"
@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger age;
@end
