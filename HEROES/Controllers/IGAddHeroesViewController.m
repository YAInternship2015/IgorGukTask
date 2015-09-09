//
//  IGAddHeroesViewController.m
//  IGhero
//
//  Created by Igor Guk on 08.09.15.
//  Copyright (c) 2015 Igor Guk. All rights reserved.
//

#import "IGAddHeroesViewController.h"
#import "IGValidator.h"
#import "IGHeroDataSource.h"
#import "IGHero.h"
#import "IGSuperHeroFactory.h"

@interface IGAddHeroesViewController () <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *nameModelField;
@property (nonatomic, strong) IGValidator *validator;
@property (nonatomic, strong) IGHeroDataSource *data;

- (IBAction)actionSave:(id)sender;

@end

@implementation IGAddHeroesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.validator = [IGValidator new];
    [self.nameModelField becomeFirstResponder];
}

#pragma mark - Actions

- (IBAction)actionSave:(id)sender {
    NSError *error = nil;
    if ([self.validator isValidModelTitle:self.nameModelField.text error:&error]) {
        [self.data saveModel:[IGSuperHeroFactory heroWithName:self.nameModelField.text andImage:nil]];
        [self performSegueWithIdentifier:@"embedFirst" sender:self];
    } else {
        UIAlertView *showAlert = [[UIAlertView alloc] initWithTitle:error.localizedDescription message:error.localizedFailureReason delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [showAlert show];
    }
}

- (void)saveData {
    IGHero *newHero = [IGSuperHeroFactory heroWithName:self.nameModelField.text andImage:nil];
    IGHeroDataSource *dataHero = [IGHeroDataSource new];
    [dataHero saveModel:newHero];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.nameModelField resignFirstResponder];
    return YES;
}

@end
