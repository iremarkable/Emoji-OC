//
//  NSString+FFPlus.m
//  EmojiDemo
//
//  Created by Liunex on 7/2/15.
//  Copyright © 2015 liufeifei0914@163.com. All rights reserved.
//

#import "NSString+FFPlus.h"

@implementation NSString (FFPlus)


-(NSInteger)ff_countSubstring:(NSString *)subString{
    
    NSUInteger count = 0, length = [self length];
    NSRange range = NSMakeRange(0, length);
    while(range.location != NSNotFound)
    {
        range = [self rangeOfString: subString options:0 range:range];
        if(range.location != NSNotFound)
        {
            range = NSMakeRange(range.location + range.length, length - (range.location + range.length));
            count++;
        }
    }
    
    return count;
}


-(NSString *)ff_replaceSubString:(NSString *)subString withTargetString:(NSString *)targetString{
   
    
    NSString *newString = nil;
    
    if ([self rangeOfString:subString].location==NSNotFound) {
        return self;
    }else{
        
        //delete the substring
        
        NSRange range = [self rangeOfString:subString];
        NSString *part0 = [self substringToIndex:range.location];
        NSString *part1 = [self substringFromIndex:range.location + range.length];
        
        // add target string
        newString = [part0 stringByAppendingString:targetString];
        newString = [newString stringByAppendingString:part1];
        
    }
    
    return newString;
}



@end
