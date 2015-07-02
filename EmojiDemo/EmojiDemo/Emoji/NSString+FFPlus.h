//
//  NSString+FFPlus.h
//  EmojiDemo
//
//  Created by Liunex on 7/2/15.
//  Copyright © 2015 liufeifei0914@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (FFPlus)

-(NSInteger)ff_countSubstring:(NSString *)subString;
-(NSString *)ff_replaceSubString:(NSString *)subString withTargetString:(NSString *)targetString;


@end
