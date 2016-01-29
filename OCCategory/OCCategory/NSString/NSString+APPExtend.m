//
//  NSString+APPExtend.m
//  Yeah
//
//  Created by 冯成林 on 15/11/26.
//  Copyright © 2015年 冯成林. All rights reserved.
//

#import "NSString+APPExtend.h"


NSString const * ResourceURL = @"http://112.74.125.78";

@implementation NSString (APPExtend)

-(NSString *)ResourceURL{if (self.length == 0) return nil;return [NSString stringWithFormat:@"%@%@",ResourceURL,self];}



@end
