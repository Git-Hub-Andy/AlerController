//
//  AlertController.m
//  AlerController
//
//  Created by 袁志浦 on 16/3/27.
//  Copyright © 2016年 YuanZhiPu. All rights reserved.
//

#import "AlertController.h"

@implementation AlertController
//当样式为UIAlertControllerStyleAlert且有取消按钮的时候,取消在数组中的首位
+ (void)showAlertControllerWithStyle:(UIAlertControllerStyle )style controller:(UIViewController *)controller title:(NSString *)title message:(NSString *)message list:(NSArray *)list indexTitle:(void(^)(NSInteger selectIndex))indexTitle{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:style];
    
    for (NSString  *string in list) {
        
        UIAlertActionStyle style = UIAlertActionStyleDefault;
        if ([string isEqualToString:@"取消"]) {
            style = UIAlertActionStyleCancel;
        }
        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:string style:style handler:^(UIAlertAction *action) {
            NSInteger c = [list indexOfObject:string];
            indexTitle(c);
        }];
        [alertController addAction:alertAction];
    }
    
    [controller presentViewController:alertController animated:YES completion:nil];

}
@end
