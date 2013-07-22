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

