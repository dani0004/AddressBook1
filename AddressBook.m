//
//  AddressBook.m
//  Project11
//
//  Created by Wendy-Anne Daniel on 2013-12-17.
//  Copyright (c) 2013 Wendy-Anne Daniel. All rights reserved.
//supports CRUD
//

#import "AddressBook.h"

@implementation AddressBook
//define return type as generic pointer
//to support subclassing of AddressBook
-(id) initWithName: (NSString*) name
{
    //allocate memory within the class to totally encapsulate
    self=[super init];
    if(self){
        bookName=[[NSString alloc] init];
        book=[[NSMutableArray alloc] init];
    }
    return self;
}
//make sure init uses initWithName
//so that default name is noName if
//an external program may do an alloc and init for the
//address book
-(id) init
{
    return [self initWithName:@"NoName"];
}
//add a card
-(void) addCard:(AddressCard*) theCard
{
    [book addObject:theCard];
}
-(int) entries
{
    return [book count];
}
//use fast enumeration forthe loop for xxx in yyy
-(void) list
{
    NSLog(@"==========================================");
    for(AddressCard *theCard in book)
        NSLog(@"%-20s   %-32s",[theCard.name UTF8String],[theCard.email UTF8String]);
}
//lookup a card by name
-(AddressCard*) lookup:(NSString*) theName
{
    
    for(AddressCard* nextCard in book)
    {
        if([nextCard.name caseInsensitiveCompare: theName]==NSOrderedSame)
            return nextCard;
    }
    return nil;
    
}
//remove a card
//removeObjectIdenticalTo references memory location and not what is in the card
-(void) removeCard:(AddressCard*) theCard
{
    [book removeObjectIdenticalTo: theCard];
}
//rupdate a card
-(void) updateCard:(NSString*) theName andtheNewCard:(AddressCard*) newCard
{
    
    //get the address of the specific card
    AddressCard* ac=[self lookup:theName];
    //change card properties
    ac.name=newCard.name;
    ac.email=newCard.email;
    
    
}
-(void) dealloc
{
    [bookName release];
    [book release];
    [super dealloc];
}

@end
