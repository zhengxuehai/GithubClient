//
//  AFHttpManager.h
//  GitHubClient
//
//  Created by 郑学海 on 16/5/3.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFHttpManager : NSObject
+ (instancetype)sharedInstance ;

-(void)fetchAccessTokenWithCodeURL:(NSURL *)CodeURL;

@end
