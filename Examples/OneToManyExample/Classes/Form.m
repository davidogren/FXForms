//
//  Form.m
//  OneToManyExample
//
//  Created by Bart Vandendriessche on 22/04/14.
//  Copyright (c) 2014 A Strange Loop. All rights reserved.
//

#import "Form.h"

@implementation Form

- (instancetype)init
{
    if ((self = [super init]))
    {
        self.phoneNumbers = @[@"555 111 222", @"555 128 318"];
    }
    return self;
}

- (NSDictionary *)phoneNumbersField
{
    return @{FXFormFieldType: FXFormFieldTypeOneToMany, FXFormFieldInline: @(YES)};
}

@end
