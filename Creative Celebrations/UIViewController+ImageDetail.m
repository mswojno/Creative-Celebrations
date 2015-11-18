//
//  UIViewController+ImageDetail.m
//  Creative Celebrations
//
//  Created by MATTHEW S WOJNO on 2/22/15.
//  Copyright (c) 2015 Matthew Wojno. All rights reserved.
//

#import "UIViewController+ImageDetail.h"

@implementation ImageDetail

@synthesize imageView;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
        if(self){
                
        }
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    self.imageView.image = self.img;
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}


@end
