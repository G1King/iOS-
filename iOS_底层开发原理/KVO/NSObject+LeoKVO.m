//
//  NSObject+LeoKVO.m
//  iOS_底层开发原理
//
//  Created by Leo on 2018/10/19.
//  Copyright © 2018年 SPIC. All rights reserved.
//

#import "NSObject+LeoKVO.h"
#import <objc/runtime.h>
@implementation NSObject (LeoKVO)
- (void)Leo_addObserver:(NSObject*)observer forKeyPath:(NSString*)keyPath options:(NSKeyValueObservingOptions)options context:(void*)context{
    NSString * oldClass = NSStringFromClass(self.class);
    NSString * newClass = [@"LeoKVO_" stringByAppendingString:oldClass];
    Class class = objc_allocateClassPair(self.class, newClass.UTF8String, 0);
    //注册一个雷
    objc_registerClassPair(class);
    object_setClass(self, class);
    
    class_addMethod(class, @selector(setName:), (IMP)objc , "v@:@");
   
}
void objc(id self,SEL _cmd,NSString * newName){
    NSLog(@"%@",self);
}
@end
