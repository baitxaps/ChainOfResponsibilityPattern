//
//  Husband.m
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Husband.h"

@implementation Husband

- (instancetype)initWihtLevel:(NSInteger)level {
    if (self = [super initWihtLevel:HandlerLevelHusbandRequest]) {
    }
    return self;
}

- (instancetype)init {
    if (self = [self initWihtLevel:HandlerLevelHusbandRequest]) {
       
    }
    return self;
}

- (void)handleMessage:(IWomen *)women {
    NSLog(@"--妻子向丈夫请示---");
    NSLog(@"%@",women.request);
    NSLog(@"丈夫的答复是:%@",@"同意");
}

@end
