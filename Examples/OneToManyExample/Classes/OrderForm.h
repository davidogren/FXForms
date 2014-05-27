//
//  OrderForm.h
//  OneToManyExample
//
//  Created by David Ogren on 5/26/14.
//  Copyright (c) 2014 A Strange Loop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FXForms.h"
#import "AddressForm.h"

@interface OrderForm : NSObject <FXForm>

@property (nonatomic, copy) NSString *orderID;
@property (nonatomic, strong) NSDate *orderDate;
@property (nonatomic, strong) AddressForm *shippingAddress;

@end
