//
//  FormViewController.m
//  OneToManyExample
//
//  Created by Bart Vandendriessche on 22/04/14.
//  Copyright (c) 2014 A Strange Loop. All rights reserved.
//

#import "FormViewController.h"

#import "InformationForm.h"
#import "AddressForm.h"
#import "OrderForm.h"

@interface FormViewController ()

@end

@implementation FormViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        InformationForm *company = [self demoCompany];
        company.relatedCompanies[@"parent"]=[self parentCompany];
        company.relatedCompanies[@"competitor"]=[self otherCompany];
        self.formController.form = company;
    }
    return self;
}

- (InformationForm *) demoCompany
{
    InformationForm *company = [[InformationForm alloc] init];
    
    company.companyName = @"ABC Company";
    company.phoneNumbers = @[@"555 111 222", @"555 128 318"];
    
    AddressForm *shippingAddress1 = [[AddressForm alloc] init];
    shippingAddress1.street = @"Infinite Loop";
    shippingAddress1.number = @"1";
    shippingAddress1.city = @"Cupertino";
    shippingAddress1.country = @"United States";
    company.shippingAddresses = @[shippingAddress1];
    
    company.addresses = [company.shippingAddresses mutableCopy];
    
    OrderForm *order1 = [[OrderForm alloc] init];
    order1.orderID = @"112312";
    order1.shippingAddress = shippingAddress1;
    order1.orderDate = [NSDate date];
    company.orders = [NSOrderedSet orderedSetWithArray:@[order1]];
    
    company.relatedCompanies = [[NSMutableDictionary alloc] init];
    
    return company;
}

- (InformationForm *) parentCompany
{
    InformationForm *company = [[InformationForm alloc] init];
    company.companyName = @"XYZ Company";
    
    return company;
}

- (InformationForm *) otherCompany
{
    InformationForm *company = [[InformationForm alloc] init];
    company.companyName = @"Acme";
    
    return company;
}

@end
