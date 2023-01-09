//
//  PNViewController.m
//  PNTest
//
//  Created by xixi on 01/08/2023.
//  Copyright (c) 2023 xixi. All rights reserved.
//

#import "PNViewController.h"
#import <PNTool/PNTool.h>

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
