# 快速高效 | iOS身份证识别

## 一：简介

demo新增身份证国徽面识别，可识别出签发机关和有效期。

快捷支付涉及到方方面面，同时安全问题既是用户所关心的，也是制作者不容忽视的重要部分。
比如涉及到支付和金钱的app，商户端app等等，都需要进行实名认证，实名认证可以通过银行卡认证和身份证认证。
通常办法是通过上传照片，并且手动输入基本信息进行认证，这种方法不仅操作复杂，而且容易出错。
网上很多资源，识别率低，速度慢，用户体验很差。今天我就和大家介绍一下我使用的方法，可以快速、高效的识别中国身份证信息。随后会陆续更新银行卡识别。

## 项目展示

#### 1头像面信息展示页面

![信息展示页面](http://upload-images.jianshu.io/upload_images/2829694-a58987dfb8a196b1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#### 2.国徽面信息展示页面

![5AB7A14B-0121-4AE8-A6C5-F5A6668287D7.png](http://upload-images.jianshu.io/upload_images/2829694-d928d98355e25059.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 四：Demo接入流程

#### 1.首先把demo下载下来

#### 2.打开项目将下面的文件拷贝到自己的工程中：
* libexidcard
* FBYTool
* FBYCategory
* FBYModel
* FBYView
* FBYBase

#### 3.添加配置

在你的项目的Info.plist文件中，添加权限描述（Key   Value）
Privacy - Camera Usage Description 是否允许访问相机
Privacy - Photo Library Usage Description 是否允许访问相册
如下图：
![plist](https://user-gold-cdn.xitu.io/2018/1/2/160b57cc1a6b2c9d?w=1136&h=804&f=png&s=173122)

#### 4. 项目设置

选择项目名字，选择Build Settings，搜索enable bitcode 设置为NO即可。


#### 5. 项目引用

1.头像面识别

在项目中需要使用的页面，增加引用代码：
```
#import "IDCardCaptureViewController.h"
```
在点击扫描身份证的点击事件中，跳转页面：
```
IDCardCaptureViewController *idcvc = [[IDCardCaptureViewController alloc]init];
    
[self.navigationController pushViewController:idcvc animated:YES];
```

2.国徽面识别

在项目中需要使用的页面，增加引用代码：
```
#import "TIDCardCaptureViewController.h"
```
在点击扫描身份证的点击事件中，跳转页面：
```
TIDCardCaptureViewController *idcvc = [[TIDCardCaptureViewController alloc]init];
    
[self.navigationController pushViewController:idcvc animated:YES];
```
到此项目就接入完成！！！

> 希望可以帮助大家，如有问题可加QQ群: 668562416 交流

> 如果哪里有什么不对或者不足的地方，还望读者多多提意见或建议

> 如需转载请联系我，经过授权方可转载，谢谢
