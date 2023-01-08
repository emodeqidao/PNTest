//
//  PNVoucher.m
//  PNVoucherKit
//
//  Created by xixi on 2022/12/28.
//

#import "PNVoucher.h"
#import "UIColor+Extend.h"
//#import <AFNetworking/AFNetworking.h>
//#import "PNVoucherKitHeader.h"
//#import <SVProgressHUD/SVProgressHUD.h>
    
@implementation PNVoucher

- (void)printDemo:(NSString *)arg {
    NSLog(@"%@", arg);
}

- (void)testShow {
//    [SVProgressHUD show];
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [SVProgressHUD dismiss];
//    });
}

- (void)testColor {
    NSLog(@"%@", [UIColor colorWithHexString:@"#ffffff"]);
}

@end
