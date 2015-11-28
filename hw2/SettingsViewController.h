//
//  SettingsViewController.h
//  hw2
//
//  Created by 三橋啓多 on 11/28/15.
//  Copyright © 2015 KeitaMitsuhashi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController

@property NSUserDefaults *ud;
@property IBOutlet UITextField *nameField;
@property IBOutlet UITextField *adressField;
@property IBOutlet UITextField *phoneField;

@end
