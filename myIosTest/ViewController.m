//
//  ViewController.m
//  myIosTest
//
//  Created by scott on 2017/3/13.
//  Copyright © 2017年 scott. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck * deck;
@end

@implementation ViewController

-(Deck*)deck{
    if(!_deck) _deck= [self createDeck];
    return _deck;
}
-(Deck *)createDeck{
    return [[PlayingCardDeck alloc]init];
}
-(void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"flips: %d",self.flipCount];
    NSLog(@"flipcount = %d",self.flipCount);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)touchCardButton:(UIButton *)sender {
//    UIImage *cardImage = ;
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        Card *card = [self.deck drawRandomCard];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:card.contents forState:UIControlStateNormal];
    }
    self.flipCount++;
    
}


@end
