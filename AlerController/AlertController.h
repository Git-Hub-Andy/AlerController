//
//  AlertController.h
//  AlerController
//
//  Created by 袁志浦 on 16/3/27.
//  Copyright © 2016年 YuanZhiPu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface AlertController : NSObject

+ (void)showAlertControllerWithStyle:(UIAlertControllerStyle )style controller:(UIViewController *)controller title:(NSString *)title message:(NSString *)message list:(NSArray *)list indexTitle:(void(^)(NSInteger selectIndex))indexTitle;

@end
