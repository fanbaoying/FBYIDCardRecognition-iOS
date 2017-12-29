//
//  ViewController.m
//  FBYIDCardRecognition-iOS
//
//  Created by 范保莹 on 2017/12/29.
//  Copyright © 2017年 FBYIDCardRecognition-iOS. All rights reserved.
//

#import "ViewController.h"

#import "IDCardCaptureViewController.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"身份证识别";
    
    UIButton *IdCardBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/4, 150, SCREEN_WIDTH/2, 50)];
    IdCardBtn.backgroundColor = [UIColor lightGrayColor];
    [IdCardBtn addTarget:self action:@selector(IdCardBtn:) forControlEvents:UIControlEventTouchUpInside];
    [IdCardBtn setTitle:@"身份证识别" forState:0];
    
    [self.view addSubview:IdCardBtn];
}

- (void)IdCardBtn:(UIButton *)sender {
    
    IDCardCaptureViewController *idcvc = [[IDCardCaptureViewController alloc]init];
    
    [self.navigationController pushViewController:idcvc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
