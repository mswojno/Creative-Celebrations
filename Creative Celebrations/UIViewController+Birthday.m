//
//  UIViewController+Birthday.m
//  Creative Celebrations
//
//  Created by MATTHEW S WOJNO on 2/26/15.
//  Copyright (c) 2015 Matthew Wojno. All rights reserved.
//

#import "UIViewController+Birthday.h"

@implementation Birthday


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.creativecelebrationsinc.com/birthday-packages.html"]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView3 loadRequest:request];
}

- (NSString *)buildGoogleSearchParameter:(NSString *)searchField
{
    NSArray *unencodedStrings = [searchField componentsSeparatedByString:@" "];
    NSMutableArray *encodedStrings = [NSMutableArray array];
    
    for (NSString *unencodedString in unencodedStrings)
        [encodedStrings addObject:[self urlEncode:unencodedString]];
    
    return [encodedStrings componentsJoinedByString:@"+"];
}

- (NSString *)urlEncode:(NSString *)unencodedString
{
    return CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                     (CFStringRef)unencodedString,
                                                                     NULL,
                                                                     (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                                     kCFStringEncodingUTF8));
}



@end
