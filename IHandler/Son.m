//
//  Son.m
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Son.h"

@implementation Son

- (instancetype)initWihtLevel:(NSInteger)level {
    if (self = [super initWihtLevel:HandlerLevelSonRequest]) {
    }
    return self;
}

- (instancetype)init {
    if (self = [self initWihtLevel:HandlerLevelSonRequest]) {
        
    }
    return self;
}


- (void)handleMessage:(IWomen *)women {
    NSLog(@"--母亲向儿子请示---");
    NSLog(@"%@",women.request);
    NSLog(@"儿子的答复是:%@",@"同意");
}



//- (void)handleMessage:(IWomen *)women {
//    NSLog(@"母亲的请示是:%@",women.request);
//    NSLog(@"儿子的答复是:%@",@"同意");
//}


@end
