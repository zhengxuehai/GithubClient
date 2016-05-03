//
//  ViewController.m
//  GitHubClient
//
//  Created by 臧其龙 on 16/4/30.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "ViewController.h"
#import "AFHttpClient.h"
#import "AFHttpClient+test.h"
static NSString * const kClientID =@"7731f4f2c1cb599f40b5";
static NSString * const kRedirectURL = @"GithubZheng://OAuth";

static NSInteger haha = 0;


@interface ViewController ()
@property(strong,nonatomic)NSDictionary *dic;
@property(strong,nonatomic)NSString *code;

@end

@implementation ViewController

- (id)init{
    if (self = [super init]) {
        haha++;
        NSLog(@"init %ld times",(long)haha);
    }
    return self;
}

-(void)addhaha{
    haha++;
    NSLog(@"init %ld times",(long)haha);

}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"first commit");
    [[AFHttpClient sharedInstance]testadd];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)login:(id)sender {
    
    NSString *finalURL = [NSString stringWithFormat:@"https://github.com/login/oauth/authorize?client_id=%@&scope=%@&redirect_uri=%@", kClientID, @"user,repo", kRedirectURL];
    [[UIApplication  sharedApplication]openURL:[NSURL URLWithString:finalURL]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSDictionary *)dic{
    return nil;
    //return @{@"client_id": kClientID, @"client_secret": kClientSecret, @"code": };
}
@end
