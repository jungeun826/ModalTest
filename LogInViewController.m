//
//  LogInViewController.m
//  ModalTest
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "LogInViewController.h"
#import "ViewController.h"
@interface LogInViewController ()
@property (weak, nonatomic) IBOutlet UITextField *idField;

@end

@implementation LogInViewController
- (IBAction)confirmLogin:(id)sender {
    //1.Nofitication -> UserNameChanged이름 짓고, 이 알림에 관심이 있는 것(ViewController)들을 정해서 등록한 후,
    //                  이름이 바뀌었을때 알려준다. (이름 바꾸는 곳 LogiViewController)
    NSDictionary *userInfo = @{@"username":self.idField.text};
    [[NSNotificationCenter defaultCenter] postNotificationName:@"UsernameChanged" object:nil userInfo:userInfo];
   // ViewController *mainVC = (ViewController *)self.presentingViewController;

    //mainVC.welcomLabel.text = self.idField.text;
    [self dismissViewControllerAnimated:YES completion:nil];
}
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
