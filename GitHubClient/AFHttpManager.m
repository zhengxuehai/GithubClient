//
//  AFHttpManager.m
//  GitHubClient
//
//  Created by 郑学海 on 16/5/3.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "AFHttpManager.h"
#import "AFHttpClient.h"
static NSString * const kClientID =@"7731f4f2c1cb599f40b5";
static NSString * const kClientSecret=@"42d75135939fc41ed4d43b0264dcf78c7de0ebd0";
static NSString * const kGetaccesstoken =@"https://github.com/login/oauth/access_token";


@implementation AFHttpManager

+ (instancetype)sharedInstance {
    static AFHttpManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AFHttpManager alloc] init];
    });
    return sharedInstance;
}
-(void)fetchAccessTokenWithCodeURL:(NSURL *)CodeURL{
        NSString *URLstr=CodeURL.absoluteString;
        NSString *code;
        NSRange range=[URLstr rangeOfString:@"="];
        if (range.location !=NSNotFound) {
         code=[URLstr substringFromIndex:range.location+1];
        }
        NSLog(@" code  is  %@",code);
    NSDictionary *dic= @{@"client_id": kClientID, @"client_secret": kClientSecret, @"code": code};
    
    [[AFHttpClient sharedInstance]postWithPath:kGetaccesstoken parameters:dic success:^(id data) {
        NSLog(@"data is   %@",data);
        NSString *token=[data objectForKey:@"access_token"];
        [self userdefaultWithToken:token];
    } failure:^(id errorCode) {
        NSLog(@"%@",errorCode);
    }];

}

-(void)userdefaultWithToken:(NSString *)accessToken{
    
    NSUserDefaults *user=[NSUserDefaults standardUserDefaults];
    [user setObject:accessToken forKey:@"accessToken"];
    
}
@end
