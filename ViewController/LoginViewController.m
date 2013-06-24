//
//  LoginViewController.m
//  BiomeBattle_v_0.1
//
//  Created by Rui Zheng on 2013-06-21.
//  Copyright (c) 2013 Rui Zheng. All rights reserved.
//

#import "LoginViewController.h"


@interface LoginViewController ()

@end



@implementation LoginViewController;

@synthesize db,userName,passWord;

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
	// Do any additional setup after loading the view.
    [[self view] setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed:@"bg-F3F3D0-forest-grasslands-urban-1.png"]]];
    db=[[DBManager alloc]init];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    NSDictionary* mydic = [DBManager getUserInfo:(userName)];
    NSString* DBpassword = [[mydic valueForKey:@"Password"] valueForKey:@"S"];
    if (DBpassword == passWord.text) {
        true;
        //jump to main view
    }else{
        false;
    }
}

- (IBAction)signup:(id)sender {
}
@end
