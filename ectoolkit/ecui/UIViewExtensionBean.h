//
//  UIViewExtensionBean.h
//  uiExtension
//
//  Created by  on 12-6-7.
//  Copyright (c) 2012年 richitec. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum {
    titleExt,
    leftBarButtonItemExt,
    rightBarButtonItemExt,
    viewControllerRefExt
} UIViewExtensionType;


@interface UIViewExtensionBean : NSObject

// UI
// UIView title
@property (nonatomic, retain) NSString *title;
// UIView navigation bar left button item
@property (nonatomic, retain) UIBarButtonItem *leftBarButtonItem;
// UIView navigation bar right button item
@property (nonatomic, retain) UIBarButtonItem *rightBarButtonItem;

// view controller reference
@property (nonatomic, retain) UIViewController *viewControllerRef;

@end
