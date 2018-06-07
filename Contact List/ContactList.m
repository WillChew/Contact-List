//
//  ContactList.m
//  Contact List
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init {
    if (self = [super init]) {
        _contactList = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [_contactList addObject:newContact];
}

-(void)list {
    for (int i = 0 ; i < [_contactList count] ; i++) {
        Contact *contact = [_contactList objectAtIndex: i];
        NSLog(@"Contact ---- %d : %@", i, contact.name);
    }
}
@end
