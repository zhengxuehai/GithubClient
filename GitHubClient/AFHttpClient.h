//
//  AFHttpClient.h
//  GitHubClient
//
//  Created by 郑学海 on 16/5/2.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^successful)(id data);
typedef void (^failure)(id errorCode);
@interface AFHttpClient : NSObject
+ (instancetype)sharedInstance ;
- (void)postWithPath:(NSString *)path
          parameters:(NSDictionary *)parameters
             success:(successful)success
             failure:(failure)failure;


-(void)testadd;

@end
