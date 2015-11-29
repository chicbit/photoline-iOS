//
//  FullViewController.h
//  hw2
//
//  Created by 三橋啓多 on 11/29/15.
//  Copyright © 2015 KeitaMitsuhashi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AFNetworking/AFNetworking.h>

@interface FullViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *messageLabel;
@property NSString *jsonStr;
- (IBAction)takePhoto:(id)sender;

@property NSDictionary *response;
@property NSString *imgStr;
@property NSString *date;


@end
