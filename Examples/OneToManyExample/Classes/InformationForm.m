//
//  Form.m
//  OneToManyExample
//
//  Created by Bart Vandendriessche on 22/04/14.
//  Copyright (c) 2014 A Strange Loop. All rights reserved.
//

#import "InformationForm.h"
#import "AddressForm.h"
#import "OrderForm.h"

@implementation InformationForm

- (NSArray *)fields
{
    return @[
             //Shows that scalar information works just fine in combination with to-many fields
             @{FXFormFieldKey: NSStringFromSelector(@selector(companyName))
               },
                   
             //Shows in-line editable strings
             @{FXFormFieldKey: NSStringFromSelector(@selector(phoneNumbers)),
               FXFormFieldTemplate: FXFormFieldTemplateToMany,
               FXFormFieldInline: @(YES),
               FXFormFieldClassInCollection: [NSString class]},

             //Shows an editable array of subforms
             @{FXFormFieldKey: NSStringFromSelector(@selector(addresses)),
               FXFormFieldTemplate: FXFormFieldTemplateToMany,
               FXFormFieldInline: @(YES),
               FXFormFieldClassInCollection: [AddressForm class]},

             //Shows designating an array of subforms as non-editable via FXFormFieldInline
             //Tests using a mutable array
             //Tests having the same object appear in multiple to-many collections
             @{FXFormFieldKey: NSStringFromSelector(@selector(shippingAddresses)),
               FXFormFieldTemplate: FXFormFieldTemplateToMany,
               FXFormFieldInline: @(NO),
               FXFormFieldClassInCollection: [AddressForm class]},
    
             //Shows an editable array of an NSOrderedSet
             @{FXFormFieldKey: NSStringFromSelector(@selector(orders)),
               FXFormFieldTemplate: FXFormFieldTemplateToMany,
               FXFormFieldInline: @(NO),
               FXFormFieldClassInCollection: [OrderForm class]},
             
             //Shows using an NSDictionary for the collection (keys are ignored)
             //Tests that insert/delete still not displayed regardless of FXFieldInline
             //  (because collection is not ordered)
             //Shows that even if the class in the array implements FXForm, form will not be displayed
             //  if FXFormFieldClassInCollection is not set
             @{FXFormFieldKey: NSStringFromSelector(@selector(relatedCompanies)),
               FXFormFieldTemplate: FXFormFieldTemplateToMany,
               FXFormFieldInline: @(YES)}
             ];
}

- (NSString *)fieldDescription
{
    return self.companyName;
}

@end
