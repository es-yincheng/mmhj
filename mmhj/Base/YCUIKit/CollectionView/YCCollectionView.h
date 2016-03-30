//
//  YCCollectionView.h
//  mmhj
//
//  Created by cheng yin on 16/3/29.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YCCollectionView : UIView<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property(nonatomic, copy) NSString* cellName;
@property(nonatomic, strong) NSArray* dataSource;
//@property(nonatomic, strong) id delegate;


-(instancetype)initWithFrame:(CGRect)frame
                    delegate:(id)delegate
                  dataSource:(NSArray*)dataSource
                        Cell:(NSString*)cell
                      layOut:(CGSize)itemsize;
@end
