//
//  KWEFormBehaviour.h
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

#import "KWETextValidationBehaviour.h"

@interface KWEFormBehaviour : KWEBehaviour

@property (nonatomic, strong, nullable) IBOutletCollection(id) NSArray<KWETextValidationBehaviour *> *validations;

@property (nonatomic, strong, nullable) IBOutlet UIBarButtonItem *barButton;
@property (nonatomic, strong, nullable) IBOutletCollection(UIControl) NSArray *controls;

@end
