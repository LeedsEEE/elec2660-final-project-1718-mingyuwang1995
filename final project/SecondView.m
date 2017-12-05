//
//  SecondView.m
//  final project
//
//  Created by Mingyu Wang on 2017/12/5.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "SecondView.h"

@interface SecondView ()
@property (weak, nonatomic) IBOutlet UIImageView *pic1;
@property (weak, nonatomic) IBOutlet UIImageView *pic2;
@property (weak, nonatomic) IBOutlet UIImageView *pic3;
@property (weak, nonatomic) IBOutlet UIImageView *pic4;
@property (weak, nonatomic) IBOutlet UIImageView *pic5;
@property (weak, nonatomic) IBOutlet UIButton *btn_more;
@property (weak, nonatomic) IBOutlet UILabel *topLable;
@property (weak, nonatomic) IBOutlet UIButton *bottompic;


@end

@implementation SecondView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.btn_more addTarget:self action:@selector(btn_moreaction) forControlEvents:UIControlEventTouchUpInside];
    
    
    if (self.TwoTypes == TwoTypeOne) {
        [self.pic1 setImage:[UIImage imageNamed:@"cavaliers1"]];
        [self.pic2 setImage:[UIImage imageNamed:@"cavaliers2"]];
        [self.pic3 setImage:[UIImage imageNamed:@"cavaliers3"]];
        [self.pic4 setImage:[UIImage imageNamed:@"cavaliers4"]];
        [self.pic5 setImage:[UIImage imageNamed:@"cavaliers5"]];
        [self.bottompic setImage:[UIImage imageNamed:@"nba1"] forState:UIControlStateNormal ];
        self.topLable.text = @"Ready to be a Cavaliers";
        
    }
    if (self.TwoTypes == TwoTypeTwo) {
        [self.pic1 setImage:[UIImage imageNamed:@"bostonceltics1"]];
        [self.pic2 setImage:[UIImage imageNamed:@"bostonceltics2"]];
        [self.pic3 setImage:[UIImage imageNamed:@"bostonceltics3"]];
        [self.pic4 setImage:[UIImage imageNamed:@"bostonceltics4"]];
        [self.pic5 setImage:[UIImage imageNamed:@"bostonceltics5"]];
        [self.bottompic setImage:[UIImage imageNamed:@"nba2"] forState:UIControlStateNormal ];
        self.topLable.text = @"Ready to be a Bostonceltics";
        
    }
    if (self.TwoTypes == TwoTypeThree) {
        [self.pic1 setImage:[UIImage imageNamed:@"huojian1"]];
        [self.pic2 setImage:[UIImage imageNamed:@"huojian2"]];
        [self.pic3 setImage:[UIImage imageNamed:@"huojian3"]];
        [self.pic4 setImage:[UIImage imageNamed:@"huojian4"]];
        [self.pic5 setImage:[UIImage imageNamed:@"huojian5"]];
        [self.bottompic setImage:[UIImage imageNamed:@"nba3"] forState:UIControlStateNormal ];
        self.topLable.text = @"Ready to be a HoustonRockets";
        
    }
    if (self.TwoTypes == TwoTypeFour) {
        [self.pic1 setImage:[UIImage imageNamed:@"spurs1"]];
        [self.pic2 setImage:[UIImage imageNamed:@"spurs2"]];
        [self.pic3 setImage:[UIImage imageNamed:@"spurs3"]];
        [self.pic4 setImage:[UIImage imageNamed:@"spurs4"]];
        [self.pic5 setImage:[UIImage imageNamed:@"spurs5"]];
        [self.bottompic setImage:[UIImage imageNamed:@"nba4"] forState:UIControlStateNormal ];
        self.topLable.text = @"Ready to be a Spurs";
        
    }
    if (self.TwoTypes == TwoTypeFive) {
        [self.pic1 setImage:[UIImage imageNamed:@"yongshi"]];
        [self.pic2 setImage:[UIImage imageNamed:@"yongshi2"]];
        [self.pic3 setImage:[UIImage imageNamed:@"yongshi3"]];
        [self.pic4 setImage:[UIImage imageNamed:@"yongshi4"]];
        [self.pic5 setImage:[UIImage imageNamed:@"yongshi5"]];
        [self.bottompic setImage:[UIImage imageNamed:@"nba5"] forState:UIControlStateNormal ];
        self.topLable.text = @"Ready to be a Warrior";
        
    }
}

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
