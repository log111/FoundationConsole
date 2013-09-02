//
//  SystemProtocol.h
//  FoundationConsole
//
//  Created by Long Hong on 13-9-1.
//  Copyright (c) 2013年 frontier. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SystemProtocol <NSObject>

- (BOOL) knowC;

@optional
- (BOOL) knowCompiler;
- (BOOL) knowLinuxKernel;
@required
- (BOOL) knowOS;

@end
