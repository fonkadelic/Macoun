//
//  KWEFormBehaviour.m
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

#import "KWEFormBehaviour.h"

@implementation KWEFormBehaviour

#pragma mark - NSObject

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    for (KWETextValidationBehaviour *validation in self.validations) {
        [validation addTarget:self action:@selector(validateForm) forControlEvents:UIControlEventValueChanged];
    }
}

#pragma mark -

- (void)validateForm
{
    NSArray *failingValidations = [self.validations filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(KWETextValidationBehaviour *validation, NSDictionary *bindings) {
        return ![validation validateText];
    }]];
    
    BOOL isValid = (failingValidations.count == 0);
    
    self.barButton.enabled = isValid;
    for (UIControl *control in self.controls) {
        control.enabled = isValid;
    }
}

@end
