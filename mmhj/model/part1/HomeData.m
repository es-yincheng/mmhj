//
//  HomeData.m
//  mmhj
//
//  Created by cheng yin on 16/3/28.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "HomeData.h"

@implementation HomeData
-(instancetype)initDeafualt
{
    if (self) {
        self = [super init];
    }
    [self getData];
    return self;
}
-(instancetype)updata
{
    [self getData];
    return self;
}
 
-(void)getData{
    
}
@end
