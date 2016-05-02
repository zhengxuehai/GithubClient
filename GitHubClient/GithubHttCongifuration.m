//
//  GithubHttCongifuration.m
//  GitHubClient
//
//  Created by 臧其龙 on 16/5/1.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "GithubHttCongifuration.h"

NSString * const kGithubClientID = @"2491d7cde4e96e1b6681";
NSString * const kGithubClientSecret = @"58452d9b9a3df296ca4b368eed0aa54a7df3efce";
NSString * const kGithubRedirectURL      = @"ZQLGithub://OAuth";
NSString * const kGithubOAuthScope       = @"user,public_repo,repo,notifications,gist,read:org";

NSString * const kGitHubAPIBaseURL = @"https://api.github.com";
NSString * const kGithubAuthorizeURL     = @"https://github.com/login/oauth/authorize";
NSString * const kGithubAccessURL        = @"https://github.com/login/oauth/access_token";

@implementation GithubHttCongifuration

+ (instancetype)sharedInstance {
    static GithubHttCongifuration *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[GithubHttCongifuration alloc] init];
    });
    return sharedInstance;
}

- (id)init{
    if(self = [super init])
    {
       
    }
    return self;
}


@end
