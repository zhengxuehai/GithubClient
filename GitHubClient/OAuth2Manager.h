//
//  OAuth2Manager.h
//  GitHubClient
//
//  Created by 臧其龙 on 16/5/1.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OAuth2Manager : NSObject

+ (void)openSafariToLogin;

+ (void)handleRedirectURL:(NSURL *)url;

@end
