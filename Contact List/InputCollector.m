//
//  InputCollector.m
//  Contact List
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "InputCollector.h"
#import "Contact.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    char userInput[255];
    
    NSLog(@"%@", promptString);
    
    fgets(userInput, 255, stdin);
    
    NSString *result = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
    NSString *resultTrimmed = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    
    return resultTrimmed;
}
@end
