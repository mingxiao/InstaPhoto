//
//  FeedViewController.m
//  InstaPhoto
//
//  Created by Ming Xiao on 5/10/13.
//  Copyright (c) 2013 Ming Xiao. All rights reserved.
//

#import "FeedViewController.h"
#import "FavoritesViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"Jetpack_Seed"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    //create button that goes to favorite ViewController
    UIButton * favButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    favButton.frame = CGRectMake(100, 100, 100, 50);
    [favButton setTitle:@"Favorites" forState:UIControlStateNormal];
    [self.view addSubview:favButton];
    [favButton addTarget:self action:@selector(showFavorites:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)showFavorites:(UIButton *)sender{
    FavoritesViewController * favController = [[FavoritesViewController  alloc] init];
    //pushed favController onto the controller stack
    [self.navigationController pushViewController:favController animated:true];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
