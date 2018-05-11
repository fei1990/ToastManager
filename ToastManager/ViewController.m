//
//  ViewController.m
//  ToastManager
//
//  Created by wangfei on 2018/5/11.
//  Copyright © 2018年 wangfei. All rights reserved.
//

#import "ViewController.h"
#import "TLToastManager.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//只显示菊花的loading
- (IBAction)btn1Action:(id)sender {
    
    [TLToastManager showIndicatorTo:self.view dismissHandler:^(TLToastManager *toastManager) {
        NSLog(@"%@", toastManager);
    }];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [TLToastManager dismissLoading];
    });
    
}

//显示菊花和文字
- (IBAction)btn2Action:(id)sender {
    
    [TLToastManager showIndicatorTextTo:self.view withText:@"正在加载..." dismissHandler:^(TLToastManager *toastManager) {
        //        NSLog(@"%@", toastManager);
    }];
    
}

//只包含文字的提示框
- (IBAction)btn3Action:(id)sender {
    
    [TLToastManager showTextTo:self.view withText:@"网络出错啦~" dismissAfterr:2];
    
}

//只包含图片的提示框
- (IBAction)btn4Action:(id)sender {
    
    [TLToastManager showImageTo:self.view imageName:@"icon_alert_disconnect" dismissAfter:2];
    
}

//图片和文字的提示框
- (IBAction)btn5Action:(id)sender {
    
    [TLToastManager showImageTextTo:self.view imageName:@"icon_alert_disconnect" withText:@"暂时无网络" dismisAfter:2];
    
}

@end
