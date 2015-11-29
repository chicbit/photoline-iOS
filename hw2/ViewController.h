//
//  ViewController.h
//  hw2
//
//  Created by 三橋啓多 on 11/28/15.
//  Copyright © 2015 KeitaMitsuhashi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AFNetworking/AFNetworking.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *messageLabel;
@property NSString *jsonStr;


@end

