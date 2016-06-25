//
//  ViewController.m
//  AlerController
//
//  Created by 袁志浦 on 16/3/27.
//  Copyright © 2016年 YuanZhiPu. All rights reserved.
//

#import "ViewController.h"
#import "AlertController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)buttonClick:(id)sender {
    [AlertController showAlertControllerWithStyle:UIAlertControllerStyleAlert controller:self title:@"温馨提示" message:@"确定删除吗" list:@[@"取消",@"A",@"B",@"C"] indexTitle:^(NSInteger selectIndex) {
        NSLog(@"%ld",selectIndex);
    }];
    
}

@end
