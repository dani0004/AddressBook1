//
//  AddressBook.h
//  Project11
//
//  Created by Wendy-Anne Daniel on 2013-12-17.
//  Copyright (c) 2013 Wendy-Anne Daniel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject
{
    NSString *bookName;
    NSMutableArray *book; //will contain cards
}
-(id) initWithName: (NSString*) name;
-(void) addCard:(AddressCard*) theCard;
-(int) entries;
-(void) list;
-(AddressCard*) lookup:(NSString*) theName;
-(void) removeCard:(AddressCard*) theCard;
-(void) updateCard:(NSString*) theCard andtheNewCard:(AddressCard*) newCard;
-(void) dealloc;

@end
