//
//  SecondView.h
//  final project
//
//  Created by Mingyu Wang on 2017/12/5.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,TwoType) {
    TwoTypeOne,
    TwoTypeTwo,
    TwoTypeThree,
    TwoTypeFour,
    TwoTypeFive
};
@interface SecondView : UIViewController
@property (nonatomic,assign)TwoType  TwoTypes;
@end
