//
//  ViewController.m
//  InstaPhoto
//
//  Created by Ming Xiao on 5/10/13.
//  Copyright (c) 2013 Ming Xiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView{
    // called the first time view property is accessed
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    //NSLog(@"Our screen is %f x %f",viewRect.size.height,viewRect.size.width);
    
    UIView *colorView = [[UIView alloc] initWithFrame:viewRect];
    self.view  = colorView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
