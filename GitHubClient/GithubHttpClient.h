//
//  GithubHttpClient.h
//  GitHubClient
//
//  Created by 臧其龙 on 16/5/1.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GithubRequest.h"

@interface GithubHttpClient : NSObject

+ (instancetype)sharedInstance;

- (void)addRequest:(GithubRequest *)request;

- (void)clearCache;

@end
