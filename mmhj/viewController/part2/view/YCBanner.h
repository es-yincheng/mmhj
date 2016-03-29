//
//  YCBanner.h
//  mmhj
//
//  Created by cheng yin on 16/3/29.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Banner.h"
@interface YCBanner : UIView<BannerDelegate>
@property(nonatomic, strong) NSArray *images;
-(instancetype)initWithFrame:(CGRect)frame images:(NSArray*)image;

@end
