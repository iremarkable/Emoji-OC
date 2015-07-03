# Emoji-OC

 
### 源码包含了近1000个Emoji表情，全部最常用的Emoji表情以及一大部分冷门表情.

##使用说明：
### iOS支持表情的直接显示，但是为了兼容web以及Android等，上传到服务器的数据以及请求下来的数据都要做相应的数据转换

### 表情处理类：
		//使用单例，表情数据比较大
        EmojiUtils *utils = [EmojiUtils sharedInstance];

 

### 带有表情的处理成为：U+XXXX格式 
 
    NSString *stringWithEmoji = @"It's a fine day.🐣😄";
    NSString *unicodeString = [utils convertEmojiToUnicodeWithString:stringWithEmoji];
    NSLog(@"convertEmojiToUnicodeWithString: %@",unicodeString);

### 将带有表情的转换为服务器约定格式的表情如： @"It's a fine day.[e]1f604[/e]";
`[e],[/e]自定义的表情前缀和后缀`

    
    NSString *specificString = [utils convertEmojiToSpecificStringWithPrefix:@"[e]" surfix:@"[/e]" string:stringWithEmoji];
    
    NSLog(@"specific string %@",specificString);
    //[e]1f604[/e]
    
### 将服务器传递过来的指定格式的数据，转化为可以直接显示的数据：
`注：格式为\U0001F423，因为该格式的效果等同于Emoji`
    
    
    NSString *serverString = @"Join the team![e]1F423[/e]";
    
    NSString *result = [utils convertServerSpecificFormatEmojiToStandUnicodeWithPrefix:@"[e]" surfix:@"[/e]" string:serverString];
    NSLog(@"result string: %@",result);
    
### 直接显示
    
    NSString *finalString = @"Love me,Love my dog.\U0001F423";
    NSLog(@"finalString:%@",finalString);
    
    
    