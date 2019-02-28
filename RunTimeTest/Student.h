//
//  Student.h
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/25.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import "Person.h"
#import "Course.h"
#import "NSObject+XHCoding.h"


@interface Student : Person

@property (nonatomic, assign) NSString* idStr;

@property (nonatomic, strong)  Course *mathematics;
@property (nonatomic, strong)  Course *chinese;
@property (nonatomic, strong)  Course *english;

@property (nonatomic, assign) BOOL  isGood;

@property (nonatomic, strong) NSArray *frends;


//@property (nonatomic, assign) int intType;
//@property (nonatomic, assign) float floatType;
//@property (nonatomic, assign) double doubleType;
//@property (nonatomic, assign) long LongType;
//@property (nonatomic, assign) long long LongLongType;
//
//@property (nonatomic, assign  )  char charType;
//
////@property (nonatomic, assign) Point pointType;
//@property (nonatomic, assign ) id idType;
//@property (nonatomic, assign ) SEL selType;
//@property (nonatomic, assign ) Class ClassType;
//@property (nonatomic, copy) void (^blockType)( ) ;
//@property (nonatomic, assign) Ivar varType;
//@property (nonatomic, assign) Method methodType;


@end
