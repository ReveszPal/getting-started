//
//  ViewController.m
//  FoodTracker
//
//  Created by Pal James Revesz on 3/2/17.
//  Copyright © 2017 Revesz Pal Studio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//MARK: Properties
@property (weak, nonatomic) IBOutlet UITextField *nameTextMeal;
@property (weak, nonatomic) IBOutlet UILabel *mealNameLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Handle the text field's user input through delegate callbacks.
    _nameTextMeal.delegate = self;
}

//MARK: UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    // Hide the keyboard.
    [textField resignFirstResponder];
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    _mealNameLabel.text = textField.text;
}

//MARK: Actions

- (IBAction)setDefaultLabelText:(UIButton *)sender {
    // _mealNameLabel.text = @"Default Text";
    // [self mealNameLabel].text = @"Default Text";
    _mealNameLabel.text = @"Default Text";
}

@end
