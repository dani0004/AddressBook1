//
//  main.m
//  Project11
//
//  Created by Wendy-Anne Daniel on 2013-12-17.
//  Copyright (c) 2013 Wendy-Anne Daniel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSAutoreleasePool *pool=[[NSAutoreleasePool alloc] init];
        NSString* aName=@"Julia Kichan";
        NSString* aEmail=@"jewl33@xyz.com";
        NSString* bName=@"Tony Kichan";
        NSString* bEmail=@"jtony@xyz.com";
        NSString* cName=@"Tony2 Kichan";
        NSString* cEmail=@"jtony2@xyz.com";
        NSString* dName=@"Tony3 Kichan";
        NSString* dEmail=@"jtony3@xyz.com";

        AddressCard* card1=[[AddressCard alloc] init];
        AddressCard* card2=[[AddressCard alloc] init];
        AddressCard* card3=[[AddressCard alloc] init];
        AddressCard* card4=[[AddressCard alloc] init];
        
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail];
        [card4 setName:dName andEmail:dEmail];
        
        [card1 print];
        [card2 print];
        [card3 print];
        [card4 print];
        
        //set up the new address book
        AddressBook *book1=[[AddressBook alloc] initWithName:@"John's Address Book"];
        
        //add the cards to the address book
        
        [book1 addCard:card1];
        [book1 addCard:card2];
        [book1 addCard:card3];
        [book1 addCard:card4];
        
        NSLog(@"the address book entries are %i",[book1 entries]);
        
        [book1 list];
        
      /******REMOVE *********/
        //remove a card
        AddressCard* cc=[book1 lookup: @"Tony2 Kichan"];
        [book1 removeCard:cc];
        
        NSLog(@"=============================");
         NSLog(@"=========after removing card============");
        [book1 list];
        
      /******UPDATE *********/
        //update a card
        AddressCard* newCard=[[AddressCard alloc] init];
        [newCard setName:@"Mary Holden" andEmail:@"mh@yy.com"];

        
        [book1 updateCard:@"Tony Kichan" andtheNewCard:newCard];
        NSLog(@"=============================");
        NSLog(@"=========after updating card============");
         [book1 list];
        
        [card1 release];
        [card2 release];
        [card3 release];
        [card4 release];
        [newCard release];
        
        [pool drain];
        
    }
    return 0;
}

