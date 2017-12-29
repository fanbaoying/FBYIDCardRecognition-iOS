//
//  IDCardDetailViewController.h
//  FBYIDCardRecognition-iOS
//
//  Created by 范保莹 on 2017/12/29.
//  Copyright © 2017年 FBYIDCardRecognition-iOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IDInfo;

@interface IDCardDetailViewController : UIViewController
// 身份证信息
@property (nonatomic,strong) IDInfo *IDInfo;

// 身份证图像
@property (nonatomic,strong) UIImage *IDImage;
@end
