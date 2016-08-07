//
//  ViewController.m
//  MJShareView
//
//  Created by lmj on 16/8/7.
//  Copyright © 2016年 MInJIng_Lin. All rights reserved.
//

#import "ViewController.h"
#import "XFPublishView.h"
@interface ViewController ()<XFPublishViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn =[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100,100, 40);
    [btn setTitle:@"分享" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(shareBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)shareBtnClick
{
    XFPublishView *publishView = [[XFPublishView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    publishView.delegate = self;
    [publishView show ];
}
-(void)didSelectBtnWithBtnTag:(NSInteger)tag
{
    if (tag==1)
    {
        NSLog(@"111");
    }else if (tag==2)
    {
        NSLog(@"222");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
