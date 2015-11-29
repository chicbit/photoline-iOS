//
//  FullViewController.m
//  hw2
//
//  Created by 三橋啓多 on 11/29/15.
//  Copyright © 2015 KeitaMitsuhashi. All rights reserved.
//

#import "FullViewController.h"

@interface FullViewController ()

@end

@implementation FullViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)takePhoto:(id)sender {
    AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://ec2-52-192-110-219.ap-northeast-1.compute.amazonaws.com/push/full"
      parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
          NSLog(@"response: %@", responseObject);
          _response = responseObject;
          _imgStr = _response[@"image"];
          _date = _response[@"date"];
          
          NSData *dt = [NSData dataWithContentsOfURL:
                        [NSURL URLWithString:_imgStr]];
          UIImage *image = [[UIImage alloc] initWithData:dt];
          self.imageView.image = image;
          
          self.messageLabel.text = _date;
          
      } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
          NSLog(@"Error: %@", error);
      }];
}

@end
