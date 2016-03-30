//
//  Part2CollectionView.m
//  mmhj
//
//  Created by cheng yin on 16/3/30.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "Part2CollectionView.h"
#import "ProductsCell.h"
@implementation Part2CollectionView

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifierCell = @"ProductsCell";
    ProductsCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifierCell forIndexPath:indexPath];
    cell.image.image = [UIImage imageNamed:@"an_01"];
    cell.title.text = @"狂送红包！火爆";
    cell.intro.text = @"单品低至15元！";
    cell.desc.text = @"双12年终疯抢中！";
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"son did select : %ld",(long)indexPath.row);
}

@end
