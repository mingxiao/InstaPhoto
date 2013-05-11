//
//  FavoritesViewController.m
//  InstaPhoto
//
//  Created by Ming Xiao on 5/10/13.
//  Copyright (c) 2013 Ming Xiao. All rights reserved.
//

#import "FavoritesViewController.h"
#import "ProfileViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Favorites";
        
    }
    return self;
}

- (void)showProfile:(UIButton *) sender{
    ProfileViewController *profileController = [[ProfileViewController alloc] init];
    
    [self.navigationController pushViewController:profileController animated:true];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton * profileButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    profileButton.frame = CGRectMake(100, 100, 100, 50);
    [profileButton setTitle:@"Profile" forState:UIControlStateNormal];
    [self.view addSubview:profileButton];
    [profileButton addTarget:self action:@selector(showProfile:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
