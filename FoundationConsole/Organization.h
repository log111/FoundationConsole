//
//  Organization.h
//  FoundationConsole
//
//  Created by Long Hong on 13-9-1.
//  Copyright (c) 2013年 frontier. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ArrayOrganization;
@class SetOrganization;
@class DictionaryOrganization;

@interface Organization : NSObject

-(void)addPerson:person;
-(void)removePerson:person;
+(ArrayOrganization*)organizeByArray;
+(SetOrganization*)organizeBySet;
+(DictionaryOrganization*)organizeByDict;

@end
