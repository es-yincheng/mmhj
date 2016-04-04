//
//  ProductViewController.m
//  mmhj
//
//  Created by cheng yin on 16/3/30.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "ProductViewController.h"
#import "YCWebViewController.h"

@interface ProductViewController ()
@property(nonatomic, strong)UIScrollView *baseView;
@end

@implementation ProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view = self.baseView;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setName{
    self.title = @"商户详情";
}

-(void)addUI{

}

-(void)setFrame{

}

#pragma mark 创建界面
-(void)createUI{
    UIView *banner = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCRENW, 120)];
    UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, SCRENW*2/5, banner.frame.size.height-10)];
    image.image = [UIImage imageNamed:@"an_02"];
    [banner addSubview:image];

    UILabel *name = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(image.frame)+5, image.frame.origin.y, SCRENW-(CGRectGetMaxX(image.frame)+10), 20)];
    name.text = @"SHHKFDSF";
    [banner addSubview:name];

    UILabel *desc = [[UILabel alloc] initWithFrame:CGRectMake(name.frame.origin.x, CGRectGetMaxY(name.frame), name.frame.size.width, banner.frame.size.height-CGRectGetMaxY(name.frame)-5)];
    desc.numberOfLines = 0;
    desc.textColor = [UIColor grayColor];
    desc.font = [UIFont systemFontOfSize:15];
    desc.text = @"这是一个测试活动，只是为了查看是否换行，是否能讲信息展示完整";
    [banner addSubview:desc];

    [self.baseView addSubview:banner];


    UIButton *address = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(banner.frame), SCRENW, 60)];
    address.backgroundColor = [UIColor colorWithWhite:0.929 alpha:1.000];
    [address addTarget:self action:@selector(address) forControlEvents:UIControlEventTouchUpInside];
    UIImageView *addressIcon = [[UIImageView alloc] initWithFrame:CGRectMake(10, 15, 30, 30)];
    addressIcon.image = [UIImage imageNamed:@"lo"];
    [address addSubview:addressIcon];
    UILabel *addressText = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(addressIcon.frame)+5, addressIcon.frame.origin.y, SCRENW-(CGRectGetMaxX(addressIcon.frame)+5)-40, 30)];
    addressText.text = @"上海长宁区长宁路1139号来福士广场";
    addressText.textColor = [UIColor grayColor];
    addressText.numberOfLines = 0;
    addressText.font = [UIFont systemFontOfSize:15];
    addressText.textColor = [UIColor grayColor];
    [address addSubview:addressText];
    UIImageView *icon = [[UIImageView alloc] initWithFrame:CGRectMake(SCRENW-35, 15, 30, 30)];
    icon.image = [UIImage imageNamed:@"enter"];
    [address addSubview:icon];
    [self.baseView addSubview:address];

    UIButton *louceng = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(address.frame)+2, SCRENW, 60)];
    louceng.backgroundColor = [UIColor colorWithWhite:0.929 alpha:1.000];
    [louceng addTarget:self action:@selector(louceng) forControlEvents:UIControlEventTouchUpInside];
    UIImageView *loucengIcon = [[UIImageView alloc] initWithFrame:CGRectMake(10, 15, 30, 30)];
    loucengIcon.image = [UIImage imageNamed:@"file"];
    [louceng addSubview:loucengIcon];
    UILabel *loucengText = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(loucengIcon.frame)+5, loucengIcon.frame.origin.y, SCRENW-(CGRectGetMaxX(loucengIcon.frame)+5)-40, 30)];
    loucengText.text = @"17楼金鹿普惠企业咨询管理有限公司";
    loucengText.numberOfLines = 0;
    loucengText.font = [UIFont systemFontOfSize:15];
    loucengText.textColor = [UIColor grayColor];
    [louceng addSubview:loucengText];
    UIImageView *icon1 = [[UIImageView alloc] initWithFrame:CGRectMake(SCRENW-35, 15, 30, 30)];
    icon1.image = [UIImage imageNamed:@"enter"];
    [louceng addSubview:icon1];
    [self.baseView addSubview:louceng];

    UIButton *phone = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(louceng.frame)+2, SCRENW/2-1, 60)];
    phone.backgroundColor = [UIColor colorWithWhite:0.929 alpha:1.000];
    [phone addTarget:self action:@selector(phone) forControlEvents:UIControlEventTouchUpInside];
    UIImageView *phoneIcon = [[UIImageView alloc] initWithFrame:CGRectMake(10, 15, 30, 30)];
    phoneIcon.image = [UIImage imageNamed:@"calll"];
    [phone addSubview:phoneIcon];
    UILabel *phoneText = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(phoneIcon.frame)+5, phoneIcon.frame.origin.y, SCRENW-(CGRectGetMaxX(phoneIcon.frame)+5)-40, 30)];
    phoneText.text = @"10086";
    phoneText.numberOfLines = 0;
    phoneText.font = [UIFont systemFontOfSize:15];
    phoneText.textColor = [UIColor grayColor];
    [phone addSubview:phoneText];
    [self.baseView addSubview:phone];

    UIButton *buy = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX(phone.frame)+2, CGRectGetMaxY(louceng.frame)+2, SCRENW/2-1, 60)];
    buy.backgroundColor = [UIColor colorWithWhite:0.929 alpha:1.000];
    [buy addTarget:self action:@selector(buy) forControlEvents:UIControlEventTouchUpInside];
    UIImageView *buyIcon = [[UIImageView alloc] initWithFrame:CGRectMake(10, 15, 30, 30)];
    buyIcon.image = [UIImage imageNamed:@"cart"];
    [buy addSubview:buyIcon];
    UILabel *buyText = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(buyIcon.frame)+5, buyIcon.frame.origin.y, SCRENW-(CGRectGetMaxX(buyIcon.frame)+5)-40, 30)];
    buyText.text = @"购买";
    buyText.numberOfLines = 0;
    buyText.font = [UIFont systemFontOfSize:15];
    buyText.textColor = [UIColor grayColor];
    [buy addSubview:buyText];
    [self.baseView addSubview:buy];



    UIButton *brand1 = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(phone.frame)+2, SCRENW, 70)];
//    brand1.backgroundColor = [UIColor colorWithWhite:0.929 alpha:1.000];
    [brand1 addTarget:self action:@selector(brand1) forControlEvents:UIControlEventTouchUpInside];
    UIImageView *brand1Icon = [[UIImageView alloc] initWithFrame:CGRectMake(10, 15, 40, 40)];
    brand1Icon.image = [UIImage imageNamed:@"img2"];
    brand1Icon.layer.masksToBounds = YES;
    brand1Icon.layer.cornerRadius = brand1Icon.frame.size.width/2;
    [brand1 addSubview:brand1Icon];
    UILabel *brand1Text = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(brand1Icon.frame)+5, brand1Icon.frame.origin.y, SCRENW-(CGRectGetMaxX(brand1Icon.frame)+5)-40, brand1Icon.frame.size.height)];
    brand1Text.text = @"17楼金鹿普惠企业咨询管理有限公司";
    brand1Text.numberOfLines = 0;
    brand1Text.font = [UIFont systemFontOfSize:15];
    brand1Text.textColor = [UIColor grayColor];
    [brand1 addSubview:brand1Text];
    UIImageView *icon2 = [[UIImageView alloc] initWithFrame:CGRectMake(SCRENW-35, 20, 30, 30)];
    icon2.image = [UIImage imageNamed:@"enter"];
    UILabel *xline1 = [[UILabel alloc] initWithFrame:CGRectMake(0, brand1.frame.size.height-1, SCRENW, 1)];
    xline1.backgroundColor = [UIColor colorWithWhite:0.929 alpha:1.0];
    [brand1 addSubview:xline1];
    [brand1 addSubview:icon2];
    [self.baseView addSubview:brand1];

    UIButton *brand2 = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(brand1.frame)+2, SCRENW, brand1.frame.size.height)];
    //    brand2.backgroundColor = [UIColor colorWithWhite:0.929 alpha:1.000];
    [brand2 addTarget:self action:@selector(brand2) forControlEvents:UIControlEventTouchUpInside];
    UIImageView *brand2Icon = [[UIImageView alloc] initWithFrame:brand1Icon.frame];
    brand2Icon.image = [UIImage imageNamed:@"img2"];
    brand2Icon.layer.masksToBounds = YES;
    brand2Icon.layer.cornerRadius = brand2Icon.frame.size.width/2;
    [brand2 addSubview:brand2Icon];
    UILabel *brand2Text = [[UILabel alloc] initWithFrame:brand1Text.frame];
    brand2Text.text = @"17楼金鹿普惠企业咨询管理有限公司";
    brand2Text.numberOfLines = 0;
    brand2Text.font = [UIFont systemFontOfSize:15];
    brand2Text.textColor = [UIColor grayColor];
    [brand2 addSubview:brand2Text];
    UIImageView *icon3 = [[UIImageView alloc] initWithFrame:icon2.frame];
    icon3.image = [UIImage imageNamed:@"enter"];
    UILabel *xline2 = [[UILabel alloc] initWithFrame:CGRectMake(0, brand2.frame.size.height-1, SCRENW, 1)];
    xline2.backgroundColor = [UIColor colorWithWhite:0.929 alpha:1.0];
    [brand2 addSubview:icon3];
    [brand2 addSubview:xline2];
    [self.baseView addSubview:brand2];

    UILabel *description = [[UILabel alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(brand2.frame)+5, SCRENW, 20)];
    description.text = @"详情";
    description.font = [UIFont systemFontOfSize:16];
    [self.baseView addSubview:description];

    UILabel *intro = [[UILabel alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(description.frame), SCRENW-20, self.baseView.contentSize.height-CGRectGetMaxY(brand2.frame)-20)];
    intro.numberOfLines = 0;
    intro.textColor = [UIColor grayColor];
    intro.font = [UIFont systemFontOfSize:15];
    intro.text = @"这个是浮动的，你页面拉到哪里就哪里，如果是购物的就是点击购买，福利就是点击领取福利直接借鉴一下大众点评的购买页面即可）";
    [self.baseView addSubview:intro];

}



#pragma mark 自定义
-(void)address{
//NSLog(@"购买功能暂未开放");
    NSString *url = @"baidumap://map/direction?origin=上海&destination=我的位置&mode=driving&region=上海长宁区长宁路1139号来福士广场";
    url = [url stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
//    YCWebViewController *webVC = [[YCWebViewController alloc] init];
//    [self.navigationController pushViewController:webVC animated:YES];
}

-(void)louceng{
NSLog(@"楼层");
}

-(void)phone{
//NSLog(@"购买功能暂未开放");
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://10086"]];
}

-(void)buy{
    NSLog(@"购买功能暂未开放");
}

-(void)brand1{

}

-(void)brand2{

}


#pragma mark 懒加载
#pragma - mark - 懒加载
-(UIScrollView *)baseView{
    if (!_baseView) {
        _baseView = [[UIScrollView alloc] init];
        _baseView.backgroundColor = [UIColor whiteColor];
        _baseView.contentSize = CGSizeMake(SCRENW, SCRENW*667.00/375.00-TABBAR-NAVH);
        NSLog(@"%f",_baseView.contentSize.height);
        //        NSLog(@"view：%@ :",_baseView.contentSize.with);
        //        self.view = _baseView;
    }
    return _baseView;
}

@end
