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

@property (nonatomic, copy) NSString *companyName;
@property (nonatomic, strong) NSArray *phoneNumbers;
@property (nonatomic, strong) NSMutableArray *addresses;
@property (nonatomic, strong) NSArray *shippingAddresses;
@property (nonatomic, strong) NSOrderedSet *orders;
@property (nonatomic, strong) NSMutableDictionary *relatedCompanies;

@end
