//
//  ProfileViewController.m
//  InstaPhoto
//
//  Created by Ming Xiao on 5/10/13.
//  Copyright (c) 2013 Ming Xiao. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title= @"Profile";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    //simply display image
    //UIImageView * picView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"seed"]];
    //[picView setContentMode:UIViewContentModeTop];
    //picView.frame = self.view.frame;
    //[self.view addSubview:picView];
    
    //make image a button so when clicked it goes to full screen
    UIButton * picButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [picButton setImage:[UIImage imageNamed:@"seed"] forState:UIControlStateNormal];
    [picButton setImage:[UIImage imageNamed:@"seed"] forState:UIControlStateHighlighted];
    [picButton setFrame:CGRectMake(15, 15, 200, 100)];
    [picButton addTarget:self action:@selector(showZoom:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:picButton];
}

- (void) showZoom:(UIButton *) sender{
    //create new plain viewController on the fly
    UIViewController * imageController = [[UIViewController alloc] init];
    imageController.view.frame = self.view.frame; //set frame
    imageController.title = @"Image"; //set title
    
    //create the view
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"seed"]];
    [imageView  setContentMode:UIViewContentModeScaleAspectFill];
    
    imageView.frame = imageController.view.frame;
    //add the subview
    [imageController.view addSubview:imageView];
    
    //add navigation
    [self.navigationController pushViewController:imageController animated:true];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
