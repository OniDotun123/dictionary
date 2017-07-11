//
//  ViewController.m
//  bookmark3
//
//  Created by Oluwadamilola Oni on 7/10/17.
//  Copyright © 2017 Oluwadamilola Oni. All rights reserved.
//

#import "ViewController.h"
#import "UITableViewCell.h"

@interface ViewController (){
    NSMutableArray *myObject;
    NSDictionary *dictionary;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    myObject =[[NSMutableArray alloc] init];
    
    dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                  @"Name App 1", @"keyname",
                  @"1.2", @"keyvesion",
                  @"https://i1.wp.com/www.theimpulsivebuy.com/wordpress/wp-content/uploads/2017/05/Long-John-Silvers-Homestyle-Buttermilk-Cod.jpg?resize=550%2C639", @"keyurlimage",nil];
    [myObject addObject:dictionary];
    
    
    dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                  @"Name App 2", @"keyname",
                  @"2.0", @"keyvesion",
                  @"https://i1.wp.com/www.theimpulsivebuy.com/wordpress/wp-content/uploads/2017/05/Long-John-Silvers-Homestyle-Buttermilk-Cod.jpg?resize=550%2C639", @"keyurlimage",nil];
    [myObject addObject:dictionary];
    
    
    dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                  @"Name App 3", @"keyname",
                  @"3.0", @"keyvesion",
                  @"https://i1.wp.com/www.theimpulsivebuy.com/wordpress/wp-content/uploads/2017/05/Long-John-Silvers-Homestyle-Buttermilk-Cod.jpg?resize=550%2C639", @"keyurlimage",nil];
    [myObject addObject:dictionary];
    
    self.mytableview.dataSource=self;
    self.mytableview.delegate=self;
    
    
                  
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return myObject.count;


}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    NSDictionary *tmpDict = [myObject objectAtIndex:indexPath.row];
    
    cell.myname.text = [NSMutableString stringWithFormat:@"%@", [tmpDict objectForKeyedSubscript:@"keyname"]];
    
    cell.myversion.text = [NSMutableString stringWithFormat:@"%@", [tmpDict objectForKeyedSubscript:@"keyversion"]];
    
    //NSURL *url = [NSURL URLWithString:[tmpDict objectForKey:@"keyurlimage"]];
    
    //NSData *data = [NSData dataWithContentsOfURL:url];
    //cell.myimage = [[UIImage alloc] initWithData:data];
    return cell;
    
    
    
    




}





@end
