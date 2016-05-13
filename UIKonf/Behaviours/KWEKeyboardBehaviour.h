//
//  KWEKeyboardBehaviour.h
//  Behaviours
//
//  Created by Bernhard Loibl on 01/02/16.
//  Copyright © 2016 Kupferwerk GmbH. All rights reserved.
//

#import "KWEBehaviour.h"

NS_ASSUME_NONNULL_BEGIN

@interface KWEKeyboardBehaviour : KWEBehaviour

@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;

@property (nonatomic, assign) IBInspectable BOOL dismissKeyboardOnTouch;

@end

NS_ASSUME_NONNULL_END
