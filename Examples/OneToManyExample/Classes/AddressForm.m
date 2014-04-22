//
//  AddressForm.m
//  OneToManyExample
//
//  Created by Bart Vandendriessche on 28/04/14.
//  Copyright (c) 2014 A Strange Loop. All rights reserved.
//

#import "AddressForm.h"

@implementation AddressForm

- (NSString *)fieldDescription
{
    return [NSString stringWithFormat:@"%@ %@ %@ %@", self.number ?: @"", self.street ?: @"", self.city ?: @"", self.country ?: @""];
}

@end
