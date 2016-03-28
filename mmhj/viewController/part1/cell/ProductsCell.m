//
//  ProductsCell.m
//  mmhj
//
//  Created by cheng yin on 16/3/28.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "ProductsCell.h"

@implementation ProductsCell
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _image = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.height, self.frame.size.height)];
        [self addSubview:_image];
        
        _title = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_image.frame), _image.frame.origin.y, SCRENW/2-_image.frame.size.width, 20)];
        _title.numberOfLines = 0;
        _title.font = [UIFont systemFontOfSize:10];
        [self addSubview:_title];
        
        _intro = [[UILabel alloc] initWithFrame:CGRectMake(_title.frame.origin.x, CGRectGetMaxY(_title.frame), _title.frame.size.width, _title.frame.size.height)];
        _title.font = _title.font;
        [self addSubview:_intro];
        
        _desc = [[UILabel alloc] initWithFrame:CGRectMake(_title.frame.origin.x, CGRectGetMaxY(_intro.frame), _title.frame.size.width, _title.frame.size.height)];
        _desc.font = [UIFont boldSystemFontOfSize:12];
        [self addSubview:_desc];
    }
    return self;
}
@end
