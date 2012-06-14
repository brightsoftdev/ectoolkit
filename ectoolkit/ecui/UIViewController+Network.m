//
//  UIViewController+Network.m
//  ectoolkit
//
//  Created by star king on 12-6-14.
//  Copyright (c) 2012年 elegant cloud. All rights reserved.
//

#import "UIViewController+Network.h"
#import "iToast.h"

@implementation UIViewController (Network)

- (void)onNetworkFailed:(ASIHTTPRequest *)pRequest {
    NSError *_error = [pRequest error];
    NSLog(@"onNetworkFailed - request url = %@, error: %@, response data:%@", pRequest.url, _error, pRequest.responseData);
    [iToast showDefaultToast:NSLocalizedString(@"network exception", "") andDuration:iToastDurationNormal];
    
}

@end
