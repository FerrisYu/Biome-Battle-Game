//
//  LoginViewController.h
//  BiomeBattle_v_0.1
//
//  Created by Rui Zheng on 2013-06-21.
//  Copyright (c) 2013 Rui Zheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userName;

@property (weak, nonatomic) IBOutlet UITextField *passWord;

@property DBManager *db;

- (IBAction)logIn:(id)sender;
- (IBAction)signUp:(id)sender;
@end
