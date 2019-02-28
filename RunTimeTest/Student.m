//
//  Student.m
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/25.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import "Student.h"
#import "NSObject+XHKeyValue.h"

@implementation Student
CodingImplementation

-(NSDictionary *)replacedKeyFromPropertyName
{
   return  @{@"idStr":@"id"};
}

- (NSDictionary *)objectClassInArray
{
    return @{@"frends":NSClassFromString(@"Person")};
}
@end
