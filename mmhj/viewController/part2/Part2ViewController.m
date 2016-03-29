//
//  Part2ViewController.m
//  mmhj
//
//  Created by cheng yin on 16/3/29.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "Part2ViewController.h"
#import "Part2Model.h"
#import "Part2Banner.h"

@interface Part2ViewController ()

@end

@implementation Part2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Part2Model *p2Model = [[Part2Model alloc] init];
    NSArray* images = [p2Model getBannerImages];

    Part2Banner *banner = [[Part2Banner alloc] initWithFrame:CGRectMake(0, NAVH, SCRENW, 260*SCRENW/640) images:images];
    [self.view addSubview:banner];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
