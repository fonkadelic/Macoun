//
//  KWEAdditions.h
//  Behaviours
//
//  Created by Bernhard Loibl on 01/02/16.
//  Copyright © 2016 Kupferwerk GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark - UIResponder

@interface UIResponder (KWEAdditions)

+ (id)kwe_currentFirstResponder;

@end


#pragma mark - UITextField

@interface UITextField (KWEAdditions)

@property (nonatomic, assign) BOOL kwe_isValid;

@end


#pragma mark - Geometry

UIEdgeInsets KWEEdgeInsetsByAddingEdgeInsets(UIEdgeInsets edgeInsets, UIEdgeInsets additionalEdgeInsets);
