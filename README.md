# Emoji-OC

 
 
 
     EmojiUtils *utils = [[EmojiUtils alloc]init];
    
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