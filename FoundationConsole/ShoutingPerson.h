//
//  ShoutingPerson.h
//  FoundationConsole
//
//  Created by frontier on 13-7-22.
//  Copyright (c) 2013年 frontier. All rights reserved.
//

#import "SystemProtocol.h"
#import "Person.h"

@interface ShoutingPerson : Person <SystemProtocol>

-(void) sayGreeting:(NSString*)greeting;
+ (id<SystemProtocol>) systemClass;

@end
