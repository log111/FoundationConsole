//
//  main.m
//  FoundationConsole
//
//  Created by frontier on 13-7-22.
//  Copyright (c) 2013年 frontier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "ShoutingPerson.h"
#import "Person+PersonNameDisplayAdditions.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //Person *p = [Person person];
        NSMutableString *myFirstName = [NSMutableString stringWithString: @"Hong"];
        
        Person *p = [[Person alloc]
                     initWithFirstName:myFirstName
                              LastName:@"Long"
                              Birthday:[NSDate date]];
        //Person * __weak p = [[Person alloc] initWithFirstName:@"Hong" LastName:@"Long" Birthday:[NSDate date]];
        [p sayHello];
        
        NSLog(@"%@", p.uniqueIdentifier);
        
        ShoutingPerson *sp = [[ShoutingPerson alloc] initWithFirstName:@"Peter"
                                                              LastName:@"Hong"
                                                              Birthday:[NSDate date]];
        
        NSLog(@"Two people here: %@ and %@",
              [p lastNameFirstNameString],
              [sp lastNameFirstNameString]);
        
        [p assignUniqueIdentifier];
        NSLog(@"My id is %@", p.uniqueIdentifier);
        
        NSMutableString *buf = [NSMutableString new];
        [buf appendFormat:@"Developer %@ %@ %@.",
         [sp lastNameFirstNameString],
         [sp knowC] ? @"knows C" : @"not know C",
         [sp knowOS] ? @"knows OS" : @"not know OS"
         ];
        
        if([sp respondsToSelector:@selector(knowCompiler)]){
            
            [buf appendFormat:@"He also %@.",
             [sp knowCompiler] ? @"knows Compiler" : @"not know Compiler"];
        }
        if([sp respondsToSelector:@selector(knowLinuxKernel)]){
            
            [buf appendFormat:@"He also %@",
             [sp knowLinuxKernel] ? @"knows Compiler" : @"not know Compiler"];
        }
        
        NSLog(@"%@", buf);
        
        id<SystemProtocol> man = [ShoutingPerson systemClass];
        
        buf = [NSMutableString new];
        [buf appendString:@"Developer from the system class " ];
        [buf appendString:[man knowC] ? @"knows C" : @"not know C"];
        [buf appendString:[man knowOS] ? @"knows OS" : @"not know OS"];
        [buf appendString:@"."];
        
        if([man respondsToSelector:@selector(knowCompiler)]){
            
            [buf appendString:@" He also %@."];
            [buf appendString:
             [man knowCompiler] ? @"knows Compiler" : @"not know Compiler"];
        }
        if([man respondsToSelector:@selector(knowLinuxKernel)]){
            
            [buf appendString:@" He also %@"];
            [buf appendString:[man knowLinuxKernel] ? @"knows Compiler" : @"not know Compiler"];
        }
        NSLog(@"%@", buf);
        
        NSString *name = [sp lastNameFirstNameString];
        NSRange range = [name rangeOfString:sp.firstName];
        NSLog(@"%@ is in the range of (%u %u) of %@", sp.firstName, range.location, range.length , name);
        /*
        Person * __weak wp1 = p;
        NSLog(@"Before block");
        {
            Person * p1 = p;
            
            p = nil;
        
            [p1 sayHello];
            [wp1 sayHello];
            
            p1 = nil;
        }
        NSLog(@"After block");
        
        [wp1 sayHello];
        */
        
        /*
        [myFirstName appendString:@" Dragon"];
        
        [p sayHello];
        
        Person *sp = [ShoutingPerson person];
        [sp sayHello];
        
        Person *nilPerson;
        if(nilPerson){
            NSLog(@"nilPerson is not nil");
        }else{
            NSLog(@"nilPerson is nil");
        }
         */
        
        
    }
    return 0;
}

