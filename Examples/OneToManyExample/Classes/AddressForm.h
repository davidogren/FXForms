//
//  AddressForm.h
//  OneToManyExample
//
//  Created by Bart Vandendriessche on 28/04/14.
//  Copyright (c) 2014 A Strange Loop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXForms.h"

@interface AddressForm : NSObject <FXForm>

@property (nonatomic, copy) NSString *street;
@property (nonatomic, copy) NSString *number;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *country;

@end
