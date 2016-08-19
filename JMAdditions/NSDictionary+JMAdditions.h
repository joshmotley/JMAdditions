//
//  NSDictionary+JMAdditions.h
//  Driver
//
//  Created by Joshua Motley on 8/18/16.
//  Copyright © 2016 3good LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JMAdditions)

- (NSDictionary *) dictionaryByReplacingNSNullWithString;

@end
