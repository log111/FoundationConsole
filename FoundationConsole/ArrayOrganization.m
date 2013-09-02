//
//  ArrayOrganization.m
//  FoundationConsole
//
//  Created by Long Hong on 13-9-1.
//  Copyright (c) 2013年 frontier. All rights reserved.
//

#import "ArrayOrganization.h"

@implementation ArrayOrganization

-(void)addPerson:person{
    [self.org addObject:person];
}

-(void)removePerson:person{
    [self.org removeObject:person];
}

-(ArrayOrganization*)deppCopy{
    ArrayOrganization *copy = [ArrayOrganization new];
    copy.org = [self.org copyWithZone:nil];
    return copy;
}

-(id)copyWithZone:(NSZone *)zone{
    //TODO
}

@end
