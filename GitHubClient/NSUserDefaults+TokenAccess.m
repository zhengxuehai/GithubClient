//
//  NSUserDefaults+TokenAccess.m
//  GitHubClient
//
//  Created by 臧其龙 on 16/5/2.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "NSUserDefaults+TokenAccess.h"

static NSString * const kGithubTokenKey = @"kGithubTokenKey";
static NSString * const kGithubTokenTypeKey = @"kGithubTokenTypeKey";

@implementation NSUserDefaults (TokenAccess)

- (void)setTokenType:(NSString *)tokenType
{
    NSAssert(tokenType.length>0, @"tokenType is emtpy");
    [[NSUserDefaults standardUserDefaults] setObject:tokenType forKey:kGithubTokenTypeKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSString *)getTokenType
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:kGithubTokenTypeKey];
}

- (void)setToken:(NSString *)token
{
    NSAssert(token.length>0, @"token is emtpy");
    [[NSUserDefaults standardUserDefaults] setObject:token forKey:kGithubTokenKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSString *)getToken
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:kGithubTokenKey];
}

- (void)clearToken
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:kGithubTokenTypeKey];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:kGithubTokenKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
