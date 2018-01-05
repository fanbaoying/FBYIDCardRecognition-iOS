//
//  ViewController.m
//  FBYIDCardRecognition-iOS
//
//  Created by 范保莹 on 2017/12/29.
//  Copyright © 2017年 FBYIDCardRecognition-iOS. All rights reserved.
//

#import "ViewController.h"

#import "IDCardCaptureViewController.h"

#import "TIDCardCaptureViewController.h"

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
    
    UIButton *TWIdCardBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/4, 250, SCREEN_WIDTH/2, 50)];
    TWIdCardBtn.backgroundColor = [UIColor lightGrayColor];
    [TWIdCardBtn addTarget:self action:@selector(TWIdCardBtn:) forControlEvents:UIControlEventTouchUpInside];
    [TWIdCardBtn setTitle:@"身份证国徽面识别" forState:0];
    
    [self.view addSubview:TWIdCardBtn];
}

- (void)IdCardBtn:(UIButton *)sender {
    
    IDCardCaptureViewController *idcvc = [[IDCardCaptureViewController alloc]init];
    
    [self.navigationController pushViewController:idcvc animated:YES];
}

- (void)TWIdCardBtn:(UIButton *)sender {
    
    TIDCardCaptureViewController *idcvc = [[TIDCardCaptureViewController alloc]init];
    
    [self.navigationController pushViewController:idcvc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
