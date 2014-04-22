//
//  Form.h
//  OneToManyExample
//
//  Created by Bart Vandendriessche on 22/04/14.
//  Copyright (c) 2014 A Strange Loop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXForms.h"

@interface InformationForm : NSObject <FXForm>

@property (nonatomic, copy) NSArray *phoneNumbers;
@property (nonatomic, copy) NSArray *addresses;
@property (nonatomic, copy) NSArray *shippingAddresses;

@end
