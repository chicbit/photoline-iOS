//
//  SettingsViewController.m
//  hw2
//
//  Created by 三橋啓多 on 11/28/15.
//  Copyright © 2015 KeitaMitsuhashi. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _ud = [NSUserDefaults standardUserDefaults];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)doneButtonPushed:(id)sender {
    [_ud setObject:self.nameField.text forKey:@"name"];
    [_ud setObject:self.adressField.text forKey:@"adress"];
    [_ud setObject:self.phoneField.text forKey:@"phone"];
}


@end
