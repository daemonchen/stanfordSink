//
//  Card.h
//  myIosTest
//
//  Created by scott on 2017/3/13.
//  Copyright © 2017年 scott. All rights reserved.
//

@import Foundation;
@interface Card:NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic,getter=isChosen) BOOL chosen;
@property (nonatomic,getter=isMatched) BOOL matched;

-(int)match:(NSArray *)otherCards;
@end;
