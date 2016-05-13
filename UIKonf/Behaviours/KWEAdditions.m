//
//  KWEAdditions.m
//  Behaviours
//
//  Created by Bernhard Loibl on 01/02/16.
//  Copyright © 2016 Kupferwerk GmbH. All rights reserved.
//

#import "KWEAdditions.h"
#import <objc/runtime.h>

#pragma mark - UIResponder

static __weak id RSMCurrentFirstResponder;

@implementation UIResponder (KWEAdditions)

+ (id)kwe_currentFirstResponder
{
    RSMCurrentFirstResponder = nil;
    [[UIApplication sharedApplication] sendAction:@selector(kwe_findFirstResponder:) to:nil from:nil forEvent:nil];
    
    return RSMCurrentFirstResponder;
}

#pragma mark -

- (void)kwe_findFirstResponder:(id)sender
{
    RSMCurrentFirstResponder = self;
}

@end


#pragma mark - UITextField

@implementation UITextField (KWEAdditions)

@dynamic kwe_isValid;

- (void)setKwe_isValid:(BOOL)kwe_isValid
{
    objc_setAssociatedObject(self, @selector(kwe_isValid), @(kwe_isValid), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)kwe_isValid
{
    return [objc_getAssociatedObject(self, @selector(kwe_isValid)) boolValue];
}

@end


#pragma mark -

UIEdgeInsets KWEEdgeInsetsByAddingEdgeInsets(UIEdgeInsets edgeInsets, UIEdgeInsets additionalEdgeInsets)
{
    edgeInsets.top += additionalEdgeInsets.top;
    edgeInsets.bottom += additionalEdgeInsets.bottom;
    edgeInsets.left += additionalEdgeInsets.left;
    edgeInsets.right += additionalEdgeInsets.right;
    
    return edgeInsets;
}
