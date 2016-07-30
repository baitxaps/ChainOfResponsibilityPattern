//
//  main.m
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Women.h"
#import "Father.h"
#import "Husband.h"
#import "Son.h"
#import "RHCRandom.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *randomDatas = [RHCRandom RHCRandomArray];
        NSLog(@"%@",randomDatas);

        NSMutableArray *arrayList = [[NSMutableArray alloc]init];
        for (int i = 0; i < randomDatas.count; i ++) {
            NSInteger type = [randomDatas[i] integerValue];
            [arrayList addObject:[[Women alloc ]initWithType:type request:@"我要出去逛街"]];
        }
        // 三个请示对象
        IHandler *father = [Father new];
        IHandler *husband = [Husband new];
        IHandler *son = [Son new];
        
        // 设置请示顺序
        [father setNext:husband];
        [husband setNext:son];
        
        for (IWomen *women in arrayList) {
            [father handleMessage:women];
        }
        
    }
    return 0;
}
