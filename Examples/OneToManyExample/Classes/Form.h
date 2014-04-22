//
//  Form.h
//  OneToManyExample
//
//  Created by Bart Vandendriessche on 22/04/14.
//  Copyright (c) 2014 A Strange Loop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXForms.h"

@interface Form : NSObject <FXForm>

@property (nonatomic, strong) NSArray *phoneNumbers;

@end
