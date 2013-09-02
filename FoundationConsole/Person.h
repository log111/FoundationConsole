//
//  Person.h
//  FoundationConsole
//
//  Created by frontier on 13-7-22.
//  Copyright (c) 2013年 frontier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (readonly) NSString *uniqueIdentifier;
@property (copy) NSString *firstName;
@property (copy) NSString *lastName;
@property NSDate *birthday;

-(id) initWithFirstName:firstName
               LastName:lastName
               Birthday:birthday;
-(id) init;
-(void) sayHello;
-(void) sayGreeting:(NSString*)greeting;
-(void) assignUniqueIdentifier;
+(Person*) person;

@end
