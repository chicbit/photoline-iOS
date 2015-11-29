//
//  CallViewController.m
//  hw2
//
//  Created by 三橋啓多 on 11/29/15.
//  Copyright © 2015 KeitaMitsuhashi. All rights reserved.
//

#import "CallViewController.h"

@interface CallViewController ()

@end

@implementation CallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)takePhoto:(id)sender {
    UITabBarController *controller = self.tabBarController;
    controller.selectedViewController = [controller.viewControllers objectAtIndex: 0];
}

- (IBAction)callToP:(id)sender {
    AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://ec2-52-192-110-219.ap-northeast-1.compute.amazonaws.com/tel"
      parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
          NSLog(@"response: %@", responseObject);
          if(responseObject[@"status"] == 1){
              UIAlertView *alert =
              [[UIAlertView alloc] initWithTitle:@"見守りパトロールへの発信" message:@"完了しました"
                                        delegate:self cancelButtonTitle:@"確認" otherButtonTitles:nil];
              [alert show];

          }else{
              UIAlertView *alert =
              [[UIAlertView alloc] initWithTitle:@"見守りパトロールへの発信" message:@"完了しました"
                                        delegate:self cancelButtonTitle:@"確認" otherButtonTitles:nil];
              [alert show];
          }
          
      } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
          NSLog(@"Error: %@", error);
      }];
}

- (IBAction)callTo119:(id)sender {
    AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://ec2-52-192-110-219.ap-northeast-1.compute.amazonaws.com/tel"
      parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
          NSLog(@"response: %@", responseObject);
          if(responseObject[@"status"] == 1){
              UIAlertView *alert =
              [[UIAlertView alloc] initWithTitle:@"救急車への発信" message:@"完了しました"
                                        delegate:self cancelButtonTitle:@"確認" otherButtonTitles:nil];
              [alert show];
              
          }else{
              UIAlertView *alert =
              [[UIAlertView alloc] initWithTitle:@"救急車への発信" message:@"完了しました"
                                        delegate:self cancelButtonTitle:@"確認" otherButtonTitles:nil];
              [alert show];
          }
          
      } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
          NSLog(@"Error: %@", error);
      }];
}
@end
