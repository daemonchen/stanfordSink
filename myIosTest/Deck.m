//
//  Deck.m
//  myIosTest
//
//  Created by scott on 2017/3/14.
//  Copyright © 2017年 scott. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong,nonatomic) NSMutableArray * cards;
@end
@implementation Deck
//@synthesize cards=_cards;//这一行可以省略，为什么？
-(NSMutableArray *)cards{
    if (!_cards) {
        _cards = [[NSMutableArray alloc]init];
    }
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
}
-(void)addCard:(Card *)card{
    [self addCard:card atTop:NO];
}
-(Card*)drawRandomCard{
    Card *randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random()%[self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}
@end
