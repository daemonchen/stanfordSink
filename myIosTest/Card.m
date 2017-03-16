//
//  Card.m
//  myIosTest
//
//  Created by scott on 2017/3/13.
//  Copyright © 2017年 scott. All rights reserved.
//

#import "Card.h"

@interface Card(){}

@end
@implementation Card
@synthesize contents=_contents;
@synthesize chosen=_chosen;
@synthesize matched=_matched;
-(int)match:(NSArray *)otherCards{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}
@end
