//
//  JKVerifyTool.m
//  Pods
//
//  Created by Jack on 2017/7/7.
//
//

#import "JKVerifyTool.h"

@implementation JKVerifyTool

+(BOOL)verifyEmailWthStr:(NSString *)string{
    
    NSRange range = [string rangeOfString:@"\\w+([-+\\.]\\w+)*@\\w+([-\\.]\\w+)*\\.\\w+([-\\.]\\w+)*" options:NSRegularExpressionSearch];
    if (range.location != NSNotFound) {
        
        return YES;
    }
    
    return NO;
    
}

+(BOOL)verifyCellPhoneWthStr:(NSString *)string{
    
    NSRange range = [string rangeOfString:@"1[3|5|7|8|][0-9]{9}" options:NSRegularExpressionSearch];
    if (range.location != NSNotFound) {
        
        return YES;
    }
    
    return NO;
    
}

+(BOOL)verifyString:(NSString *)regularExpression InString:(NSString *)string2{
    
    
    NSRange range = [string2 rangeOfString:regularExpression options:NSRegularExpressionSearch];
    if (range.location != NSNotFound) {
        
        return YES;
    }
    return NO;
}


+(NSString *)getStringWith:(NSString *)regularExpression InString:(NSString *)string{
    
    NSString *resultStr=nil;
    NSRange range = [string rangeOfString:regularExpression options:NSRegularExpressionSearch];
    if (range.location != NSNotFound) {
        
        resultStr = [string substringWithRange:range];
    }
    
    return resultStr;
    
}

+(NSArray <NSString *> *)getStringsWith:(NSString *)regularExpression InString:(NSString *)string{


    NSString *resultStr=nil;
    NSRange range = [string rangeOfString:regularExpression options:NSRegularExpressionSearch];
    NSMutableArray  *collectArr = [NSMutableArray new]; //初始化拾取容器
    while (range.location != NSNotFound) {
        
        resultStr = [string substringWithRange:range];
        [collectArr addObject:resultStr];
        NSRange beiginRange = NSMakeRange(range.location+range.length, string.length-range.length-range.location);
        string = [string substringWithRange:beiginRange];
        range = [string rangeOfString:regularExpression options:NSRegularExpressionSearch];
    }
    
    return [collectArr copy];
}

@end
