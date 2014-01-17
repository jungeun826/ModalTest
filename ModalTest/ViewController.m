//
//  ViewController.m
//  ModalTest
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
- (IBAction)showSignUp:(id)sender {
    //현재 속한 스토리보드 : self.storyboard로 얻을 수 있음
    UIStoryboard *storyboard = self.storyboard;
    UIViewController *signUpViewController = [storyboard instantiateViewControllerWithIdentifier:@"SignUp"];
    
    [self presentViewController:signUpViewController animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(nameChanged:) name:@"UsernameChanged" object:nil];
}

-(void)nameChanged:(NSNotification *)notification
{
    NSDictionary *info = notification.userInfo;
    self.welcomLabel.text = info[@"username"];
    
}-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    
//    BOOL isLogin = NO;
//    if(!isLogin){
//        [self performSegueWithIdentifier:@"ModalSegue" sender:self];
//    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
