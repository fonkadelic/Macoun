//
//  KWEBehaviour.m
//  Behaviours
//
//  Created by Bernhard Loibl on 01/02/16.
//  Copyright © 2016 Kupferwerk GmbH. All rights reserved.
//

#import "KWEBehaviour.h"
#import <objc/runtime.h>

@implementation KWEBehaviour

#pragma mark - Class Constructor

+ (instancetype)behaviourWithOwner:(id)owner
{
    KWEBehaviour *behaviour = [[self alloc] init];
    behaviour.owner = owner;
    
    return behaviour;
}

#pragma mark - Initialization

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (!self) {
        return self;
    }
    [self setUp];
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (!self) {
        return self;
    }
    [self setUp];
    return self;
}

- (void)setUp
{
    // Override this in subclasses if you need to initialize custom properties
}

#if DEBUG
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    NSParameterAssert(self.owner);
}
#endif

#pragma mark - Properties

- (void)setOwner:(id)owner
{
    if (_owner != owner) {
        [self releaseLifetimeFromObject:_owner];
        _owner = owner;
        [self bindLifetimeToObject:_owner];
    }
}

#pragma mark -

- (void)bindLifetimeToObject:(id)object
{
    objc_setAssociatedObject(object, (__bridge void *)self, self, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)releaseLifetimeFromObject:(id)object
{
    objc_setAssociatedObject(object, (__bridge void *)self, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
