//
//  PNViewController.m
//  PNTest
//
//  Created by xixi on 01/08/2023.
//  Copyright (c) 2023 xixi. All rights reserved.
//

#import "PNViewController.h"
#import <PNTool/PNTool.h>
#import <SVProgressHUD/SVProgressHUD.h>
#import <Masonry/Masonry.h>

@interface PNViewController ()

@end

@implementation PNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    PNVoucher *vc = [[PNVoucher alloc] init];
    [vc printDemo:@"12"];
    [vc testShow];
    [vc testColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.frame = CGRectMake(0, 100, 100, 40);
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitle:@"push" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    [btn mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left).offset(100);
        make.top.mas_equalTo(self.view.mas_top).offset(100);
        make.width.equalTo(@(100));
        make.height.equalTo(@(40));
    }];
    
}

- (void)btnAction {
    [SVProgressHUD dismiss];
    PNVoucherViewController *vc = [[PNVoucherViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
