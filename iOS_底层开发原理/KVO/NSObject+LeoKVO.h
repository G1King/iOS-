//
//  NSObject+LeoKVO.h
//  iOS_底层开发原理
//
//  Created by Leo on 2018/10/19.
//  Copyright © 2018年 SPIC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (LeoKVO)
- (void)Leo_addObserver:(NSObject*)observer forKeyPath:(NSString*)keyPath options:(NSKeyValueObservingOptions)options context:(void*)context;
@end

NS_ASSUME_NONNULL_END
