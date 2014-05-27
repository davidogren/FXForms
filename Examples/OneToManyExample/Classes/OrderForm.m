//
//  OrderForm.m
//  OneToManyExample
//
//  Created by David Ogren on 5/26/14.
//  Copyright (c) 2014 A Strange Loop. All rights reserved.
//

#import "OrderForm.h"

@implementation OrderForm

- (NSString *)fieldDescription
{
    return [NSString stringWithFormat:@"%@", self.orderID ? self.orderID : @""];
}

@end
