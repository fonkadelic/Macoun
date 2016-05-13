//
//  KWEKeyboardBehaviour.m
//  Behaviours
//
//  Created by Bernhard Loibl on 01/02/16.
//  Copyright © 2016 Kupferwerk GmbH. All rights reserved.
//

#import "KWEKeyboardBehaviour.h"
#import "KWEAdditions.h"

@interface KWEKeyboardBehaviour ()
@property (nonatomic, assign) UIEdgeInsets originalContentInset;
@property (nonatomic, assign) UIEdgeInsets originalScrollIndicatorInsets;
@end

@implementation KWEKeyboardBehaviour

#pragma mark - KWEBehaviour

- (void)setUp
{
    [super setUp];
    
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [notificationCenter addObserver:self selector:@selector(keyboardWillBeHidden:) name:UIKeyboardWillHideNotification object:nil];
}


#pragma mark - Properties

- (void)setScrollView:(UIScrollView *)scrollView
{
    _scrollView = scrollView;
    
    self.originalContentInset = _scrollView.contentInset;
    self.originalScrollIndicatorInsets = _scrollView.scrollIndicatorInsets;
    
    if (self.dismissKeyboardOnTouch) {
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard:)];
        tapGesture.cancelsTouchesInView = NO;
        [_scrollView addGestureRecognizer:tapGesture];
    }
}


#pragma mark - Cleanup

- (void)dealloc
{
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [notificationCenter removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}


#pragma mark - Notifications

- (void)keyboardWillShow:(NSNotification *)notification
{
    UIView *firstResponder = [UIResponder kwe_currentFirstResponder];
    
    if (![firstResponder isKindOfClass:UIView.class]) {
        return;
    }
    
    if (![firstResponder isDescendantOfView:self.scrollView]) {
        return;
    }
    
    CGRect endFrame = [notification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    CGRect keyboardFrame = [[UIApplication sharedApplication].keyWindow convertRect:endFrame toView:self.scrollView];
    CGRect hiddenFrame = CGRectIntersection(keyboardFrame, self.scrollView.bounds);
    CGRect firstResponderFrame = [firstResponder convertRect:firstResponder.bounds toView:self.scrollView];
    
    UIEdgeInsets additionsEdgeInsets = UIEdgeInsetsMake(0.0f, 0.0f, CGRectGetHeight(hiddenFrame), 0.0f);
    self.scrollView.contentInset = KWEEdgeInsetsByAddingEdgeInsets(self.originalContentInset, additionsEdgeInsets);
    self.scrollView.scrollIndicatorInsets = KWEEdgeInsetsByAddingEdgeInsets(self.originalScrollIndicatorInsets, additionsEdgeInsets);
    
    if (CGRectIntersectsRect(firstResponderFrame, keyboardFrame)) {
        CGFloat offset = CGRectGetMaxY(firstResponderFrame) - CGRectGetHeight(self.scrollView.frame) + CGRectGetHeight(keyboardFrame);
        if (offset > 0) {
            [self.scrollView setContentOffset:CGPointMake(0.0f, offset) animated:YES];
        }
    }
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:[notification.userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue]];
    [UIView setAnimationCurve:[notification.userInfo[UIKeyboardAnimationCurveUserInfoKey] unsignedIntegerValue]];
    
    [self sendActionsForControlEvents:UIControlEventValueChanged];
    [self.scrollView setNeedsLayout];
    
    [UIView commitAnimations];
}


- (void)keyboardWillBeHidden:(NSNotification *)notification
{
    self.scrollView.contentInset = self.originalContentInset;
    self.scrollView.scrollIndicatorInsets = self.originalScrollIndicatorInsets;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:[notification.userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue]];
    [UIView setAnimationCurve:[notification.userInfo[UIKeyboardAnimationCurveUserInfoKey] unsignedIntegerValue]];
    
    [self sendActionsForControlEvents:UIControlEventValueChanged];
    [self.scrollView setNeedsLayout];
    
    [UIView commitAnimations];
}


#pragma mark - Actions

- (void)dismissKeyboard:(UIGestureRecognizer *)tapGesture
{
    UIView *firstResponder = [UIResponder kwe_currentFirstResponder];

    if (![firstResponder isKindOfClass:UIView.class]) {
        return;
    }

    if ([firstResponder isDescendantOfView:self.scrollView]) {
        [firstResponder resignFirstResponder];
    }
}

@end
