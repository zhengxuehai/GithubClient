//
//  OAuth2Request.h
//  GitHubClient
//
//  Created by 臧其龙 on 16/5/1.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "GithubRequest.h"

@interface OAuth2TokenRequest : GithubRequest

@property (nonatomic, copy) NSString *code;

- (id)initWithCode:(NSString *)code;

@end
