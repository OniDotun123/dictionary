//
//  ViewController.h
//  bookmark3
//
//  Created by Oluwadamilola Oni on 7/10/17.
//  Copyright © 2017 Oluwadamilola Oni. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *mytableview;
@property (weak, nonatomic) IBOutlet UILabel *myname;
@property (weak, nonatomic) IBOutlet UILabel *myversion;
@property (strong, nonatomic) IBOutlet UIImageView *myimage;

@end

