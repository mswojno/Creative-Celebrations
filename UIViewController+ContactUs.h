//
//  UIViewController+ContactUs.h
//  Creative Celebrations
//
//  Created by MATTHEW S WOJNO on 2/22/15.
//  Copyright (c) 2015 Matthew Wojno. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ContactUs:UIViewController{
    IBOutlet UITextField *field;
    IBOutlet UILabel *label;
}

-(IBAction)change:(id)sender;

-(IBAction)makeCall:(id)sender;
@end
