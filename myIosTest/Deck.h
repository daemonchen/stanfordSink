//
//  Deck.h
//  myIosTest
//
//  Created by scott on 2017/3/14.
//  Copyright © 2017年 scott. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject
-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;
-(Card *)drawRandomCard;
@end
