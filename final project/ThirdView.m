//
//  ThirdView.m
//  final project
//
//  Created by Mingyu Wang on 2017/12/5.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define UIColorFromHex(hexValue) [UIColor \
colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 \
green:((float)((hexValue & 0xFF00) >> 8))/255.0 \
blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0]

#import <WebKit/WebKit.h>
#import "ThirdView.h"


@interface ThirdView ()<WKUIDelegate,WKNavigationDelegate>
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *topLable;


@end

@implementation ThirdView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    WKWebView*   webView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    [self.view addSubview:webView];
    NSString *str ;
    if (self.TwoTypes == TwoTypeOne) {
        str = @"http://www.nba.com/teams/cavaliers";
        self.topLable.text = @"the recent match of Cavaliers";
    }
    if (self.TwoTypes == TwoTypeTwo) {
        str = @"http://www.nba.com/teams/celtics";
        self.topLable.text = @"the recent match of Bostonceltics";
        
    }
    if (self.TwoTypes == TwoTypeThree) {
        str = @"http://www.nba.com/teams/rockets";
        self.topLable.text = @"the recent match of HoustonRockets";
        
    }
    if (self.TwoTypes == TwoTypeFour) {
        str = @"http://www.nba.com/teams/spurs";
        self.topLable.text = @"the recent match of Spurs";
        
    }
    if (self.TwoTypes == TwoTypeFive) {
        str = @"http://www.nba.com/teams/warriors";
        self.topLable.text = @"the recent match of Warrior";
        
    }
    NSURL *url = [NSURL URLWithString:str];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    webView.UIDelegate = self;
    webView.navigationDelegate = self;
    
    [ webView loadRequest:request];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
