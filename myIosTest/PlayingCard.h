//
//  PlayingCard.h
//  myIosTest
//
//  Created by scott on 2017/3/14.
//  Copyright © 2017年 scott. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong,nonatomic)NSString * suit;
@property(nonatomic)NSUInteger rank;

+(NSArray*)validSuits;
+(NSUInteger)maxRank;
@end
