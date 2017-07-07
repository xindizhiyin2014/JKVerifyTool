//
//  JKVerifyTool.h
//  Pods
//
//  Created by Jack on 2017/7/7.
//
//

#import <Foundation/Foundation.h>

@interface JKVerifyTool : NSObject


/**
校验是否是邮箱的函数

 @param string 传入的待验证的字符串
 @return 是否是邮箱的状态 YES or NO
 */
+(BOOL)verifyEmailWthStr:(NSString *)string;


/**
 校验是否是手机号的函数

 @param string 传入的待验证的字符串
 @return 是否是手机号的状态 YES or NO
 */
+(BOOL)verifyCellPhoneWthStr:(NSString *)string;


/**
 验证符合正则表达式的字符串是否存在

 @param regularExpression 正则表达式
 @param string2 待验证的字符串
 @return 是否符合正则表达式规则的状态 YES or NO
 */
+(BOOL)verifyString:(NSString *)regularExpression InString:(NSString *)string2;


/**
 获取符合正则表达式的字符串

 @param regularExpression 正则表达式
 @param string 待验证的字符串
 @return 符合正则表达式规则的字符串
 */
+(NSString *)getStringWith:(NSString *)regularExpression InString:(NSString *)string;


/**
 获取符合正则表达式的字符串数组

 @param regularExpression 正则表达式
 @param string 待验证的字符串
 @return 符合条件的字符串数组
 */
+(NSArray <NSString *> *)getStringsWith:(NSString *)regularExpression InString:(NSString *)string;

@end
