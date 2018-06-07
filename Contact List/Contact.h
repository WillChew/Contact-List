//
//  Contact.h
//  Contact List
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;

- (instancetype)initWithName:(NSString *)name email:(NSString *)email;

@end
