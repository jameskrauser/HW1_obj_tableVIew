//
//  MyWebViewController.m
//  HW1_obj_TableviewWebview
//
//  Created by jameskrauser on 2018/2/22.
//  Copyright © 2018年 jameskrauser. All rights reserved.
//

#import "MyWebViewController.h"

@interface MyWebViewController ()



@end

@implementation MyWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     
    [ self.MyWebView1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]] ];
   //   nowURL = [ myurl objectAtIndex:myindex ] ;
    
    //[ self.MyWebView1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:nowurl  ]]  ]
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

///////////////////////////////
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
