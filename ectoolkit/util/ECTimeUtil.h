//
//  ECTimeUtil.h
//  ectoolkit
//
//  Created by star king on 12-6-13.
//  Copyright (c) 2012年 elegant cloud. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ECTimeUtil : NSObject

// get date string from NSDate according to specified format.
// Valid format can include some or all of following:
//      {year}, {month}, {day}, {hour}, {minute}, {second}
// eg. {year}-{month}-{day} {hour}:{minute}:{second}
//     {year}-{month}-{day}
//     {hour}:{minute}:{second}
+ (NSString*)stringFromDate:(NSDate*)date Format:(NSString*)format;

@end
