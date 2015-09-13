//
//  ViewController.m
//  XibMarginTest
//
//  Created by Pheylix on 15/9/13.
//  Copyright (c) 2015年 abc. All rights reserved.
//

#import "ViewController.h"
//#import "XibViewController.h"
#import "XibTableViewController.h"

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

- (IBAction)btnNextPressed:(id)sender {
    
    XibTableViewController *vc = [[XibTableViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}

@end
