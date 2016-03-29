//
//  YCCollectionView.m
//  mmhj
//
//  Created by cheng yin on 16/3/29.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "YCCollectionView.h"

@implementation YCCollectionView
{
    UICollectionView *_productsCollectinoView;
}

-(instancetype)initWithFrame:(CGRect)frame
                    delegate:(id)delegate
                  dataSource:(NSDictionary*)dataSource
                        Cell:(id)cell
                      layOut:(CGSize)itemsize{

    self = [super initWithFrame:frame];
    if (self) {
        //    CGSize itemSize = CGSizeMake(SCRENW/2, SCRENW/2*0.5-5);
        UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.itemSize = itemsize;
        _productsCollectinoView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, SCRENW, SCRENW/2*1) collectionViewLayout:layout];
        _productsCollectinoView.backgroundColor = [UIColor whiteColor];
        _productsCollectinoView.dataSource = self;
        _productsCollectinoView.delegate = self;
        //        _productsCollectinoView.scrollEnabled = YES;
        //        _productsCollectinoView.pagingEnabled = YES;
        //        _productsCollectinoView.showsHorizontalScrollIndicator = NO;
        _productsCollectinoView.tag =1;
        [_productsCollectinoView registerClass:[cell class] forCellWithReuseIdentifier:@"ProductsCell"];
        
        
        [self addSubview:_productsCollectinoView];
    }
    return nil;
}



-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath;
//- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section;
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 0;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 0;
}
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section;
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section;


@end
