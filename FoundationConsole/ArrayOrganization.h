//
//  ArrayOrganization.h
//  FoundationConsole
//
//  Created by Long Hong on 13-9-1.
//  Copyright (c) 2013年 frontier. All rights reserved.
//

#import "Organization.h"

@interface ArrayOrganization : Organization <NSCopying>

@property NSMutableArray* org;

-(ArrayOrganization*)shadowCopy;
-(ArrayOrganization*)deepCopy;

@end
