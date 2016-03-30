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
#import "Part2CollectionView.h"
//#import "ProductsCell.h"

@interface Part2ViewController ()

@end

@implementation Part2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Part2Model *p2Model = [[Part2Model alloc] init];
    NSArray* images = [p2Model getBannerImages];

    Part2Banner *banner = [[Part2Banner alloc] initWithFrame:CGRectMake(0, NAVH, SCRENW, 260*SCRENW/640) images:images];
    [self.view addSubview:banner];


    NSArray* dataSource = [p2Model getCollectionDataSource];
    Part2CollectionView *collection = [[Part2CollectionView alloc] initWithFrame:CGRectMake(0, SCRENH-0.8*SCRENW, SCRENW, 0.8*SCRENW) delegate:self dataSource:dataSource Cell:@"ProductsCell" layOut:CGSizeMake(50, 50)];
    [self.view addSubview:collection];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
