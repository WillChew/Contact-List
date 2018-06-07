//
//  main.m
//  Contact List
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contacts = [[ContactList alloc]init];
        
        while (YES) {
            
            //want to keep this newcontact in the loop because if it were outside it would keep replacing it**
            Contact *newContact = [[Contact alloc]init];
            InputCollector *inputCollector = [[InputCollector alloc]init];
            NSString *userInput = [inputCollector inputForPrompt:@"What would you Like to do next? new - Create a new contact. list - List all contacts. quit - Exit Application"];
            
            
            if ([userInput isEqualTo:@"new"]){
                
                NSString *name = [inputCollector inputForPrompt:@"Name: "];
                newContact.name = name;

                NSString *email = [inputCollector inputForPrompt:@"E-mail: "];
                newContact.email = email;
                [contacts addContact:newContact];
            }
            if ([userInput isEqualTo:@"list"]){
                [contacts list];
                
            }
            if ([userInput isEqualTo:@"quit"]) {
                NSLog(@"GOODBYE");
                break;
            }
        }
        

        
    }
    return 0;
}

