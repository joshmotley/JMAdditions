//
//  NSDictionary+JMAdditions.m
//  Driver
//
//  Created by Joshua Motley on 8/18/16.
//  Copyright © 2016 3good LLC. All rights reserved.
//

#import "NSDictionary+JMAdditions.h"

@implementation NSDictionary (JMAdditions)

- (NSDictionary *) dictionaryByReplacingNSNullWithString{
    NSMutableDictionary *newDictionary = [NSMutableDictionary dictionaryWithDictionary: self];
    id nullValue = [NSNull null];
    NSString *emptyString = @" ";
    
    for (NSString *key in self) {
        id object = [self objectForKey:key];
        if (object == nullValue) {
            [newDictionary setObject:emptyString forKey:key];
        }
        else if ([object isKindOfClass:[NSDictionary class]]) {
            [newDictionary setObject: [object dictionaryByReplacingNSNullWithString] forKey: key];
        }
    }
    return [NSDictionary dictionaryWithDictionary: [newDictionary copy]];
}

@end
