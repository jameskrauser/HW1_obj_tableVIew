//
//  ViewController.m
//  HW1_obj_TableviewWebview
//
//  Created by jameskrauser on 2018/2/22.
//  Copyright © 2018年 jameskrauser. All rights reserved.
//
#import "ViewController.h"
#import "MyWebViewController.h"

@interface ViewController () < UITableViewDelegate , UITableViewDataSource >
{
    //1.declare variable
    NSArray *Arr;
    NSArray *myurl;
    int selectindex;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //2. initial value
    Arr = [[ NSArray alloc ] initWithObjects:@"Apple" , @"Htc" , @"Sony", nil ];
    myurl = [[ NSArray alloc ] initWithObjects:@"https://www.apple.com" ,
                                               @"http://www.htc.com/tw/" ,
                                               @"http://www.sony-xperia.com.tw/", nil  ];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return Arr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString *Cell_Identifier = @"Cell";
    UITableViewCell *Table_view_cell = [ tableView  dequeueReusableCellWithIdentifier:Cell_Identifier ];
    
    if ( Table_view_cell ==  nil  )
    {
        Table_view_cell = [[ UITableViewCell alloc ] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:Cell_Identifier  ];
        
    }
    Table_view_cell.textLabel.text = [ Arr objectAtIndex:indexPath.row ];
    Table_view_cell.detailTextLabel.text = [ myurl objectAtIndex:indexPath.row ];
    return Table_view_cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{   //3.when you click WebView , app will process this function
    selectindex = indexPath.row;
   // NSLog(@"[table view click] myurl= %@",myurl[myindex]);
    [self performSegueWithIdentifier:@"segue1" sender:nil ];
 
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"[prepareForSegue] get url:%@" , myurl[selectindex] );
    if ( [segue.identifier isEqualToString:@"segue1"] ) {
        MyWebViewController *RecWebView = segue.destinationViewController;
        //4. Transfer URL to another WebView 
        RecWebView.receiveData = myurl[selectindex];
        NSLog(@"Send the URL to another web view ");
    }
    else {
        NSLog(@"[errro]No Segue id you selected! ");
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
@end













































