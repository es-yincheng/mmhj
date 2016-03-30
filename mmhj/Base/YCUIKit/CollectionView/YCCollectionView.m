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
                  dataSource:(NSArray*)dataSource
                        Cell:(NSString*)cell
                      layOut:(CGSize)itemsize{

    self = [super initWithFrame:frame];
    if (self) {

        self.cellName = cell;
        self.dataSource = dataSource;


        //    CGSize itemSize = CGSizeMake(SCRENW/2, SCRENW/2*0.5-5);
        UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.itemSize = CGSizeMake(itemsize.width, itemsize.height);
        _productsCollectinoView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height) collectionViewLayout:layout];
        _productsCollectinoView.backgroundColor = [UIColor whiteColor];
        _productsCollectinoView.dataSource = self;
        _productsCollectinoView.delegate = self;
        //        _productsCollectinoView.scrollEnabled = YES;
        //        _productsCollectinoView.pagingEnabled = YES;
        //        _productsCollectinoView.showsHorizontalScrollIndicator = NO;
        _productsCollectinoView.tag =1;

        NSLog(@"%f:%f",_productsCollectinoView.frame.size.width,itemsize.width);
        Class c = NSClassFromString(cell);
        [_productsCollectinoView registerClass:[c class] forCellWithReuseIdentifier:cell];

//        self.backgroundColor = [UIColor redColor];
        [self addSubview:_productsCollectinoView];
    }
    return self;
}



//-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
//    return 1;
//}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataSource.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    NSString *identifierCell = self.cellName;
//    ProductsCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifierCell forIndexPath:indexPath];
//
//    Class c = NSClassFromString([NSString stringWithFormat:@"YC%@",[self.classesArray objectAtIndex:indexPath.row-1]]);
//    UIViewController *viewctroller = [[c alloc] init];
//    [self.navigationController pushViewController:viewctroller animated:YES];


    return nil;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath;
//- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section;
//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
//    return 1;
//}
//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
//    return 1;
//}
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section;
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section;
//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//
//    return nil;
//}

@end
