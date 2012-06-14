//
//  UIViewController+Network.h
//  ectoolkit
//
//  Created by star king on 12-6-14.
//  Copyright (c) 2012年 elegant cloud. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"

@interface UIViewController (Network)
- (void)onNetworkFailed:(ASIHTTPRequest *)pRequest;
@end
