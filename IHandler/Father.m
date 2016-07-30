//
//  Father.m
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Father.h"

@implementation Father

- (instancetype)initWihtLevel:(NSInteger)level {
    if (self = [super initWihtLevel:HandlerLevelFatherRequest]) {
    
    }
    return self;
}

- (instancetype)init {
    if (self = [self initWihtLevel:HandlerLevelFatherRequest]) {
        
    }
    return self;
}


- (void)response:(IWomen *)women  {
    
    NSLog(@"--女儿向父亲请示---");
    NSLog(@"%@",women.request);
    NSLog(@"父亲的答复是:%@",@"同意");
}




/*
- (void)handleMessage:(IWomen *)women {
     NSLog(@"女儿的请示是:%@",women.request);
     NSLog(@"父亲的答复是:%@",@"同意");
}
 */

@end
