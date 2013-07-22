//
//  ShoutingPerson.m
//  FoundationConsole
//
//  Created by frontier on 13-7-22.
//  Copyright (c) 2013年 frontier. All rights reserved.
//

#import "ShoutingPerson.h"

@implementation ShoutingPerson

-(void) sayGreeting:(NSString*)greeting {
    NSString *upper = [greeting uppercaseString];
    [super sayGreeting:upper];
}

@end
