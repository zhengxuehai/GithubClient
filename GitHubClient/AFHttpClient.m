//
//  AFHttpClient.m
//  GitHubClient
//
//  Created by 郑学海 on 16/5/2.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "AFHttpClient.h"
#import "AFHTTPSessionManager.h"


@implementation AFHttpClient

+ (instancetype)sharedInstance {
    static AFHttpClient *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AFHttpClient alloc] init];
    });
    return sharedInstance;
}

-(void)postWithPath:(NSString *)path parameters:(NSDictionary *)parameters success:(successful)success failure:(failure)failure{
    
    AFHTTPSessionManager *manager=[[AFHTTPSessionManager alloc]init];

    NSString *token=[[NSUserDefaults standardUserDefaults]objectForKey:@"accessToken"];
    if (token.length>0) {
        NSString *authorization = [NSString stringWithFormat:@"%@ %@",@"token", token];[manager.requestSerializer setValue:authorization forHTTPHeaderField:@"Authorization"];
    }
    
    
    manager.requestSerializer=[AFHTTPRequestSerializer serializer];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [manager POST:path parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}
-(void)testadd{
    NSLog(@"11111");
}
@end
