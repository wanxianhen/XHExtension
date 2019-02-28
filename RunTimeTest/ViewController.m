//
//  ViewController.m
//  RunTimeTest
//
//  Created by wangxiangheng on 15/11/24.
//  Copyright © 2015年 wangxiangheng. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "Course.h"
#import "NSObject+XHKeyValue.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
      NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)  firstObject] stringByAppendingPathComponent:@"students.Data"];
//    
    Student * s1 = [Student objectWithKeyValues:@{@"isGood":@NO,@"name":@"wangxianheng",@"age":@18,@"id":@123456,@"mathematics":@{@"score":@98},@"chinese":@{@"score":@88},@"english":@{@"score":@95},@"frends":@[@{@"name":@"ganling",@"age":@16},@{@"name":@"canling",@"age":@15}]}];
    NSLog(@"名字==%@,年龄==%ld,学号==%@，数学==%ld，语文==%ld，英语==%ld,是好学生吗 == %d",s1.name,s1.age,s1.idStr,s1.mathematics.score,s1.chinese.score,s1.english.score,s1.isGood);
    
//    NSLog(@"%@",[s1.frends[0] class]);
    
//
    [NSKeyedArchiver archiveRootObject:s1 toFile:path];
//
//    NSLog(@"%@",path);
//
//   Student* s2 = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
//    
//    NSLog(@"%@",[s2 keyValues]);
    
//   NSLog(@"名字==%@,年龄==%ld,学号==%@，数学==%ld，语文==%ld，英语==%ld,是好学生吗 == %@",s1.name,s1.age,s1.IdStr,s1.mathematics.score,s1.chinese.score,s1.english.score,s1.isGood?@"YES":@"NO");
    
//           unsigned int outCount = 0;
////
//       Ivar *ivars = class_copyIvarList([NSObject class], &outCount);
////
//      for (int i = 0; i<outCount; i++) {
//        XHIvar *ivar = [[XHIvar alloc] initWithIvar:ivars[i] srcObject:self];
//    
//          NSLog(@"%@,strClass==%@",[NSString stringWithUTF8String:ivar_getName(ivars[i ])], NSStringFromClass([NSObject class ] ));
//        NSLog(@"%@,%@",ivar.name,ivar.propertyName);
//        }
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
