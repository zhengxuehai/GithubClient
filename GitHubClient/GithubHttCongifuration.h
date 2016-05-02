//
//  GithubHttCongifuration.h
//  GitHubClient
//
//  Created by 臧其龙 on 16/5/1.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GithubRequest.h"

FOUNDATION_EXPORT NSString * const kGithubClientID;
FOUNDATION_EXPORT NSString * const kGithubClientSecret;

FOUNDATION_EXPORT NSString * const kGithubRedirectURL;
FOUNDATION_EXPORT NSString * const kGitHubAPIBaseURL;
FOUNDATION_EXPORT NSString * const kGithubAuthorizeURL;
FOUNDATION_EXPORT NSString * const kGithubAccessURL;
FOUNDATION_EXPORT NSString * const kGithubOAuthScope;

@interface GithubHttCongifuration : NSObject

@property (nonatomic, copy) NSString *baseURL;

+ (instancetype)sharedInstance;

@end
