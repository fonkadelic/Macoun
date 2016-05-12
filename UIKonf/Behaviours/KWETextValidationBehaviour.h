//
//  KWETextValidationBehaviour.h
//  Behaviours
//
//  Copyright © 2016 Kupferwerk GmbH. All rights reserved.
//

#import "KWEBehaviour.h"

NS_ASSUME_NONNULL_BEGIN

@protocol KWETextValidationRule;

@interface KWETextValidationBehaviour : KWEBehaviour

+ (instancetype)behaviourWithRules:(NSArray<id<KWETextValidationRule>> *)rules;

@property (nonatomic, strong) IBOutletCollection(id) NSArray *rules;

- (BOOL)validateText;

@property (nonatomic, weak, nullable) IBOutlet UITextField *textField;
@property (nonatomic, weak, nullable) IBOutlet UIBarButtonItem *barButton;
@property (nonatomic, strong, nullable) IBOutletCollection(UIControl) NSArray *controls;

@end


@protocol KWETextValidationRule <NSObject>

- (BOOL)evaluateWithString:(NSString *)string;

@end


@interface KWELengthRule : NSObject <KWETextValidationRule>

+ (instancetype)ruleWithRange:(NSRange)range;

@property (nonatomic, assign) IBInspectable NSUInteger minCharacterCount;
@property (nonatomic, assign) IBInspectable NSUInteger maxCharacterCount;

@end


@interface KWEAllowedCharactersRule : NSObject <KWETextValidationRule>

+ (instancetype)ruleWithAllowedCharacters:(NSCharacterSet *)characterSet;

@end


@interface KWERegularExpressionRule : NSObject <KWETextValidationRule>

+ (instancetype)ruleWithRegularExpression:(NSRegularExpression *)regularExpression;

@property (nonatomic, copy) IBInspectable NSString *regExPattern;

@end

@interface KWEEmailRule : NSObject <KWETextValidationRule>

@end

NS_ASSUME_NONNULL_END
