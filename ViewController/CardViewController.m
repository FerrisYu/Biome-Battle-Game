//
//  CardDetailViewController.m
//  BiomeBattle_v_0.1
//
//  Created by Rui Zheng on 6/21/13.
//  Copyright (c) 2013 Rui Zheng. All rights reserved.
//

#import "CardViewController.h"

@interface CardViewController ()

@end

@implementation CardViewController

@synthesize aCardImg;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Card *aCard=aCardImg.card;

    // Do any additional setup after loading the view.
    
    self.name.text=aCard.name;
    [self.name setFont:[UIFont boldSystemFontOfSize:15]];
    self.latinName.text=aCard.latin_name;
    [self.latinName setFont:[UIFont systemFontOfSize:10]];
    self.backGround.image=[aCard getImgWittNSSdata:aCard.backgroundGraphicImg];
    self.picture.image=[aCardImg getImg];
    self.size.image=[aCard getImgWittNSSdata:aCard.sizeGraphicImg];
    self.hierarchy.image=[aCard getImgWittNSSdata:aCard.foodHieraachyImg];
    //Set haibtats
    self.habitats.text=[NSString stringWithFormat:@"%@,%@,%@", aCard.habitat1,aCard.habitat2,aCard.habitat3];
    self.habitats.textColor=[UIColor blueColor];
    [self.habitats setFont:[UIFont systemFontOfSize:10]];
    self.content.text=aCard.content;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
