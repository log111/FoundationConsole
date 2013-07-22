//
//  Person.m
//  FoundationConsole
//
//  Created by frontier on 13-7-22.
//  Copyright (c) 2013年 frontier. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id) initWithFirstName:(NSString*)firstName
               LastName:(NSString*)lastName
               Birthday: (NSDate*)birthday
{
    
    self = [super init];
    
    if(self){
        [self setFirstName:firstName];
        [self setLastName:lastName];
        [self setBirthday:birthday];
    }
    
    return self;
}

-(id) init{
    return [self initWithFirstName:nil LastName:nil Birthday:nil];
}

-(void) dealloc{
    NSLog(@"Person deallocation");
}

-(void) sayHello {
    [self sayGreeting:@"Hello world!"];
}

-(void) sayGreeting:(NSString*)greeting {
    //NSString *msg = [greeting uppercaseString];
    NSLog(@"%@ %@ %@", greeting, self.firstName, self.lastName);
}

+(Person*) person {
    /*!
     Class is also an object, so self works here...
     Even more, you can call this method with subclasses and get correct instances..
     */
    return [[self alloc] init];
}

@end
