//
//  ViewController.m
//  跑马灯效果
//
//  Created by liyongjie on 2017/6/30.
//  Copyright © 2017年 liyongjie. All rights reserved.
//

#import "ViewController.h"
#import <TXScrollLabelView.h>


@interface ViewController ()<TXScrollLabelViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    NSString *str1 = @"第一条通知";
    NSString *str2 = @"第二条通知";
    NSString *str3 = @"第三条通知";
    NSString *str4 = @"第四条通知";
    NSArray *arr = @[str1,str2,str3,str4];
    UIEdgeInsets edg = UIEdgeInsetsMake(2, 2, 2, 2);
    
    TXScrollLabelView *scrollLabelView = [TXScrollLabelView scrollWithTextArray:arr type:TXScrollLabelViewTypeFlipNoRepeat velocity:2 options:UIViewAnimationOptionCurveEaseInOut inset:edg];
    scrollLabelView.textAlignment = NSTextAlignmentLeft;
    scrollLabelView.scrollLabelViewDelegate = self;
    scrollLabelView.frame = CGRectMake(0, 0, 300, 36);
    scrollLabelView.center = self.view.center;
    scrollLabelView.backgroundColor = [UIColor greenColor];
    scrollLabelView.scrollTitleColor = [UIColor blueColor];
    scrollLabelView.font = [UIFont systemFontOfSize:28];
    [self.view addSubview:scrollLabelView];
    
    [scrollLabelView beginScrolling];

}

#pragma mark TXScrollLabelViewDelegate
-(void)scrollLabelView:(TXScrollLabelView *)scrollLabelView didClickWithText:(NSString *)text atIndex:(NSInteger)index{

    NSLog(@"%@-----%ld",text,index);
}
 

@end
