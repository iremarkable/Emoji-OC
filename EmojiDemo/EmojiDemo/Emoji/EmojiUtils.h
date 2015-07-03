//
//  EmojiUtils.h
//  EmojiDemo
//
//  Created by Liunex on 7/2/15.
//  Copyright © 2015 liufeifei0914@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface EmojiUtils : NSObject

@property(nonatomic,strong,readonly) NSDictionary * unicodeWithEmojiDict;
@property(nonatomic,strong,readonly) NSDictionary * emojiWithUnicodeDict;


+ (id)sharedInstance;

-(NSString *)convertUnicodeToEmojiWithString:(NSString *)string;
-(NSString *)convertEmojiToUnicodeWithString:(NSString *)string;

//covert [??]1F123[/??] to U+1F123
-(NSString *)convertServerSpecificFormatEmojiToStandUnicodeWithPrefix:(NSString *)prefix surfix:(NSString *)surfix string:(NSString *)string;
-(NSString *)convertEmojiToSpecificStringWithPrefix:(NSString *)prefix surfix:(NSString *)surfix string:(NSString *)string;




@end
