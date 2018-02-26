//
//  ViewController.m
//  HW1_obj_TableviewWebview
//
//  Created by jameskrauser on 2018/2/22.
//  Copyright © 2018年 jameskrauser. All rights reserved.
//
#import "ViewController.h"
@interface ViewController () < UITableViewDelegate , UITableViewDataSource >
{
    NSArray *Arr;
    NSArray *myurl;
    int myindex;
   
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Arr = [[ NSArray alloc ] initWithObjects:@"Apple" , @"Htc" , @"Sony", nil ];
    myurl = [[ NSArray alloc ] initWithObjects:@"https://www.apple.com" , @"http://www.htc.com/tw/" , @"http://www.sony-xperia.com.tw/", nil  ];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
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
{
    myindex = indexPath.row;
    NSLog(@"[table view click]myurl= %@",myurl[myindex]);
   // [self performSegueWithIdentifier:@"segue" sender:nil];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

@end













































