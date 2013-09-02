//
//  Person+PersonNameDisplayAdditions.m
//  FoundationConsole
//
//  Created by Long Hong on 7/23/13.
//  Copyright (c) 2013 frontier. All rights reserved.
//

#import "Person+PersonNameDisplayAdditions.h"

@implementation Person (PersonNameDisplayAdditions)

-(NSString *)lastNameFirstNameString{
    return [NSString stringWithFormat:@"%@ %@", self.lastName, self.firstName];
}

@end
