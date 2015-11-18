//
//  UIViewController+Login.m
//  Creative Celebrations
//
//  Created by MATTHEW S WOJNO on 2/25/15.
//  Copyright (c) 2015 Matthew Wojno. All rights reserved.
//

#import "UIViewController+Login.h"

@implementation Login


-(IBAction)change:(id)sender{
    if(![password.text  isEqual: @"hyeowor"]){
        [self performSegueWithIdentifier:@"PushIt" sender:self];
    }
}
@end
