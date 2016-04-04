//
//  YCWebViewController.m
//  mmhj
//
//  Created by cheng yin on 16/3/30.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "YCWebViewController.h"

@interface YCWebViewController ()<UIWebViewDelegate>
{
    UIWebView *webView;
    UIActivityIndicatorView* activityIndicator;
    UIView *view;
}

@end

@implementation YCWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //创建UIActivityIndicatorView背底半透明View
    view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCRENW, SCRENH)];
    [view setTag:108];
    [view setBackgroundColor:[UIColor whiteColor]];
    //    [view setAlpha:0.5];
    [self.view addSubview:view];
    [self initView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initView
{
    view = [[UIView alloc] initWithFrame:CGRectMake(0, 60, SCRENW, SCRENH-60)];
    [view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:view];

    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@" " style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = item;

    //    UIBarButtonItem *share = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"fenxiang"] style:UIBarButtonItemStylePlain target:self action:@selector(shareAction:)];
    //    self.navigationItem.rightBarButtonItem = share;

    webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 66, SCRENW, SCRENH-66)];
    //    webView.frame = self.view.bounds;
    //    webView.scalesPageToFit = YES;
    webView.delegate = self;
    webView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview: webView];
}

-(void)viewDidAppear:(BOOL)animated
{
//    _webUrl = [SendData sharedInstance].webUrl;
    NSString *url = @"baidumap://map/direction?origin=中关村&destination=五道口&mode=driving&region=北京";
//    /NSString *url = @"http://api.map.baidu.com/direction/v1?mode=driving&origin=清华大学&destination=北京大学&origin_region=北京&destination_region=北京&output=json&ak=33e98k0lIH8wZW1UCmlptmuWQIAx3Ram";
    url = [url stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    [webView loadRequest:request];
}

/**
 *  分享
 */
-(IBAction)shareAction:(id)sender{
    //    [Tools ShareAppFromView:self.view delegate:self];
}

/**
 *  开始请求网页数据，并开启busyview
 *
 *  @param webView
 */
-(void)webViewDidStartLoad:(UIWebView *)webView
{
//    activityIndicator = [Tools createBusyView];
    [view addSubview:activityIndicator];

    [activityIndicator startAnimating];
}

/**
 *  网页加载结束
 *
 *  @param webView <#webView description#>
 */
- (void) webViewDidFinishLoad:(UIWebView *)webView
{
    [activityIndicator stopAnimating];
    [view removeFromSuperview];
    NSLog(@"webViewDidFinishLoad");

}
- (void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"failed:%@",error);
    [activityIndicator stopAnimating];
    [view removeFromSuperview];
}

@end
