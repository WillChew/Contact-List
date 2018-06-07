//
//  Contact.m
//  Contact List
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "Contact.h"
#import "InputCollector.h"

@implementation Contact

- (instancetype)initWithName:(NSString*)name email:(NSString*)email {
    if (self = [super init]) {
        _email = email;
        _name = name;
    }
    
    return self;
}

@end
