//
//  Form.m
//  OneToManyExample
//
//  Created by Bart Vandendriessche on 22/04/14.
//  Copyright (c) 2014 A Strange Loop. All rights reserved.
//

#import "InformationForm.h"
#import "AddressForm.h"

@implementation InformationForm

- (instancetype)init
{
    if ((self = [super init]))
    {
        self.phoneNumbers = @[@"555 111 222", @"555 128 318"];
        AddressForm *shippingAddress1 = [[AddressForm alloc] init];
        shippingAddress1.street = @"Infinite Loop";
        shippingAddress1.number = @"1";
        shippingAddress1.city = @"Cupertino";
        shippingAddress1.country = @"United States";
        self.shippingAddresses = @[shippingAddress1];
    }
    return self;
}

- (NSArray *)fields
{
    return @[
             @{FXFormFieldKey: NSStringFromSelector(@selector(phoneNumbers)),
               FXFormFieldTemplate: FXFormFieldTemplateToMany,
               FXFormFieldInline: @(YES),
               FXFormFieldClassInCollection: [NSString class]},

             @{FXFormFieldKey: NSStringFromSelector(@selector(addresses)),
               FXFormFieldTemplate: FXFormFieldTemplateToMany,
               FXFormFieldInline: @(YES),
               FXFormFieldClassInCollection: [AddressForm class]},

             @{FXFormFieldKey: NSStringFromSelector(@selector(shippingAddresses)),
               FXFormFieldTemplate: FXFormFieldTemplateToMany,
               FXFormFieldInline: @(NO),
               FXFormFieldClassInCollection: [AddressForm class]},
             ];
}

@end
