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
        [p sayHello];
        
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
    }
    return 0;
}

