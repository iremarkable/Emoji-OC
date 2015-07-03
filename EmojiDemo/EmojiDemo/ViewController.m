//
//  ViewController.m
//  EmojiDemo
//
//  Created by Liunex on 7/2/15.
//  Copyright © 2015 liufeifei0914@163.com. All rights reserved.
//

#import "ViewController.h"
#import "EmojiUtils.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    EmojiUtils *utils = [EmojiUtils sharedInstance];
    
    NSString *stringWithEmoji = @"It's a fine day.🐣😄";
    NSString *unicodeString = [utils convertEmojiToUnicodeWithString:stringWithEmoji];
    NSLog(@"convertEmojiToUnicodeWithString: %@",unicodeString);
    
    NSString *specificString = [utils convertEmojiToSpecificStringWithPrefix:@"[e]" surfix:@"[/e]" string:stringWithEmoji];
    
    NSLog(@"specific string %@",specificString);
    //[e]1f604[/e]
    
    
    NSString *serverString = @"Join the team![e]1F423[/e]";
    
    NSString *result = [utils convertServerSpecificFormatEmojiToStandUnicodeWithPrefix:@"[e]" surfix:@"[/e]" string:serverString];
    NSLog(@"result string: %@",result);
    
    
    
    NSString *finalString = @"Love me,Love my dog.\U0001F423";
    NSLog(@"finalString:%@",finalString);
    
   
}


@end
