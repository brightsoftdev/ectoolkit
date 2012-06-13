//
//  ECTimeUtil.m
//  ectoolkit
//
//  Created by star king on 12-6-13.
//  Copyright (c) 2012年 elegant cloud. All rights reserved.
//

#import "ECTimeUtil.h"
#import "NSString+CommonUtils.h"

@implementation ECTimeUtil

+ (NSString*)stringFromDate:(NSDate *)date Format:(NSString *)format {
    NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSChineseCalendar];
    NSUInteger unitFlag = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit;
    NSDateComponents *cps = [cal components:unitFlag fromDate:date];

    NSString *hour = [[NSString alloc] initWithFormat:@"%ld", cps.hour];
    NSString *time = [format replaceString:@"{hour}" withTarget:hour];
    
    NSString *minute = [[NSString alloc] initWithFormat:@"%ld", cps.minute];
    time = [time replaceString:@"{minute}" withTarget:minute];
    
    
    NSString *second = [[NSString alloc] initWithFormat:@"%ld", cps.second];
    time = [time replaceString:@"{second}" withTarget:second];
    
    NSString *year = [[NSString alloc] initWithFormat:@"%ld", cps.year];
    time = [time replaceString:@"{year}" withTarget:year];
    
    NSString *month = [[NSString alloc] initWithFormat:@"%ld", cps.month];
    time = [time replaceString:@"month" withTarget:month];
    
    NSString *day = [[NSString alloc] initWithFormat:@"%ld", cps.day];
    time = [time replaceString:@"day" withTarget:day];
    
    return time;
}

@end
