//
//  OAuth2Request.m
//  GitHubClient
//
//  Created by 臧其龙 on 16/5/1.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "OAuth2TokenRequest.h"
#import "GithubHttCongifuration.h"

static NSString * const kGithubAccessTokenURL        = @"https://github.com/login/oauth/access_token";

@implementation OAuth2TokenRequest

- (id)initWithCode:(NSString *)code
{
    if (self = [super init]) {
        _code = code;
    }
    return self;
}

- (GithubRequestMethod)requestMethod
{
    return GithubRequestMethodPost;
}

- (NSString *)requestURL
{
    return kGithubAccessTokenURL;
}

- (NSDictionary *)requestBody {
    return @{@"client_id": kGithubClientID, @"client_secret": kGithubClientSecret, @"code": _code};
}

@end
