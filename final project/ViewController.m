//
//  ViewController.m
//  final project
//
//  Created by Mingyu Wang on 2017/11/22.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "ViewController.h"
#import "SecondView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn_one;
@property (weak, nonatomic) IBOutlet UIButton *btn_two;
@property (weak, nonatomic) IBOutlet UIButton *btn_three;
@property (weak, nonatomic) IBOutlet UIButton *btn_four;
@property (weak, nonatomic) IBOutlet UIButton *btn_five;


@end

@implementation ViewController
- (void)btn_oneAction{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    SecondView *vc = [sb instantiateViewControllerWithIdentifier:@"SecondView"];
    vc.TwoTypes = TwoTypeOne;
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)btn_twoAction{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    SecondView *vc = [sb instantiateViewControllerWithIdentifier:@"SecondView"];
    vc.TwoTypes = TwoTypeTwo;
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)btn_threeAction{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    SecondView *vc = [sb instantiateViewControllerWithIdentifier:@"SecondView"];
    vc.TwoTypes = TwoTypeThree;
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)btn_fourAction{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    SecondView *vc = [sb instantiateViewControllerWithIdentifier:@"SecondView"];
    vc.TwoTypes = TwoTypeFour;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)btm_fiveAciton{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    SecondView *vc = [sb instantiateViewControllerWithIdentifier:@"SecondView"];
    vc.TwoTypes = TwoTypeFive;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.btn_one addTarget:self action:@selector(btn_oneAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.btn_two addTarget:self action:@selector(btn_twoAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.btn_three addTarget:self action:@selector(btn_threeAction) forControlEvents:UIControlEventTouchUpInside];
    [self.btn_four addTarget:self action:@selector(btn_fourAction) forControlEvents:UIControlEventTouchUpInside];
    [self.btn_five addTarget:self action:@selector(btm_fiveAciton) forControlEvents:UIControlEventTouchUpInside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btn_one:(UIButton *)sender {
}
@end
