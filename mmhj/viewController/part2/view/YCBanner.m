//
//  YCBanner.m
//  mmhj
//
//  Created by cheng yin on 16/3/29.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "YCBanner.h"
#define BANNERSCALE 0.4
@implementation YCBanner
{
    UIPageControl *pageView_;
    Banner *banner;
//    NSArray *images;
}


-(instancetype)initWithFrame:(CGRect)frame images:(NSArray*)image{
    //    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, frame.size.width*BANNERSCALE)];
    self = [super initWithFrame:frame];
    if (self) {

        self.images = image;

        NSLog(@"创建banner");
        banner = [[Banner alloc]initWithFrame:self.bounds];
        banner.scrollsToTop = NO;
        banner.bannerDelegate = self;
        banner.backgroundColor = [UIColor redColor];
        [self addSubview:banner];
        //        banner.frame = CGRectMake(0, NAVH, SCRENW, BANNERSCALE);
        banner.frame = CGRectMake(0, 0, SCRENW, 260*SCRENW/640);
        [self getAdvertisingData];
    }
    return self;
}


#pragma mark - banner

- (void)getAdvertisingData{
    [self showAdvertising];
    [self addPageControl];
}

#pragma mark -- 初始化pageControl
- (void)addPageControl{
    //设置页码
    if (pageView_) {
        [pageView_ removeFromSuperview];
    }
    pageView_ = [[UIPageControl alloc]init];
    //设置位置
    CGFloat centerX = SCRENW * 0.5;
    CGFloat centerY = CGRectGetMaxY(banner.frame) - 8;
    pageView_.center =  CGPointMake(centerX, centerY);
    pageView_.bounds = CGRectMake(0, banner.frame.size.height, banner.frame.size.width, 20);
    //设置颜色
    pageView_.currentPageIndicatorTintColor = [UIColor redColor];
    pageView_.pageIndicatorTintColor = [UIColor lightGrayColor];
    [self addSubview:pageView_];
    NSLog(@"添加页码");

}


#pragma mark -- 显示广告
- (void)showAdvertising{

    //更新
    //加入数据
    //    NSArray *tempmarry = @[
    //                           @{@"pic":@"http://ftp.darenbiji.com//advertisement/20160312/30396c53-7e07-4331-b472-a09543d30c50.png"},
    //                           @{@"pic":@"http://ftp.darenbiji.com//advertisement/20160312/53f60f17-4b4f-4941-a7cc-411ba9d92d7a.png"}];
    NSLog(@"图片：%@",self.images);
    banner.pics = self.images;
    [banner upDate];

}


-(void)currentPage:(int)page total:(NSUInteger)total{
    //页码
    if (total > 1) {
        pageView_.numberOfPages = total;
        pageView_.currentPage = page;
    }else{
        banner.userInteractionEnabled = NO;
        [banner releaseTimer];
    }
}

-(void)didClick:(id)data{
    NSLog(@"点击：%@",data);
}

@end
