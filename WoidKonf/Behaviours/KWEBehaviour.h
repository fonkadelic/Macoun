//
//  KWEBehaviour.h
//  Behaviours
//
//  Created by Bernhard Loibl on 01/02/16.
//  Copyright © 2016 Kupferwerk GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KWEBehaviour : UIControl

// Convenient for non-IB usage
+ (instancetype)behaviourWithOwner:(id)owner;

- (void)setUp;

@property(nonatomic, weak) IBOutlet id owner;

@end

NS_ASSUME_NONNULL_END
