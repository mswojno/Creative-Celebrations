//
//  UIViewController+Website.m
//  Creative Celebrations
//
//  Created by MATTHEW S WOJNO on 2/23/15.
//  Copyright (c) 2015 Matthew Wojno. All rights reserved.
//

#import "UIViewController+Website.h"

@implementation Website

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.creativecelebrationsinc.com"]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
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
