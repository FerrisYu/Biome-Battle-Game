//
//  CardDetailViewController.h
//  BiomeBattle_v_0.1
//
//  Created by Rui Zheng on 6/21/13.
//  Copyright (c) 2013 Rui Zheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Card.h"
#import "CardImg.h"

@interface CardViewController : UIViewController


@property (nonatomic)  CardImg *aCardImg;

@property (weak, nonatomic) IBOutlet UIImageView *backGround;
@property (weak, nonatomic) IBOutlet UIImageView *picture;
@property (weak, nonatomic) IBOutlet UIImageView *size;
@property (weak, nonatomic) IBOutlet UIImageView *hierarchy;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *latinName;
@property (weak, nonatomic) IBOutlet UILabel *habitats;
@property (weak, nonatomic) IBOutlet UILabel *content;

@end
