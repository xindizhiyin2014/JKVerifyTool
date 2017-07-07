//
//  JKVerifyToolSpec.m
//  JKVerifyTool
//
//  Created by Jack on 2017/7/7.
//  Copyright 2017年 HHL110120. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import <JKVerifyTool/JKVerifyTool.h>


SPEC_BEGIN(JKVerifyToolSpec)

describe(@"JKVerifyTool", ^{
    context(@"test functions", ^{
        it(@"verify email function", ^{
           
            [[theValue([JKVerifyTool verifyEmailWthStr:@"1234567891@qq.com"]) should ] equal:theValue(YES)];
            
        });
        
        it(@"verify phoneNum function", ^{
            [[theValue([JKVerifyTool verifyCellPhoneWthStr:@"17321359907"]) should] equal:theValue(YES)];
        });
        
        it(@"verifyString: InString:", ^{
            NSString *regularExpression = @"1[3|5|7|8|][0-9]{9}";
            NSString * string = @"1112323dfdfdfdf17321359907((***JKJHHH32323232";
            [[theValue([JKVerifyTool verifyString:regularExpression InString:string]) should] equal:theValue(YES)];
        });
        
        it(@"getStringWith: InString:", ^{
           NSString *regularExpression = @"1[3|5|7|8|][0-9]{9}";
            NSString *string = @"1112323dfdfdfdf17321359907((***JKJHHH32323232";
            NSString *resultString = @"17321359907";
            [[[JKVerifyTool getStringWith:regularExpression InString:string] should] equal:resultString];
            
 
        });
        
        it(@"getStringsWith: InString:", ^{
            NSString *regularExpression = @"1[3|5|7|8|][0-9]{9}";
            NSString *string = @"1112323dfdfdfdf17321359907((***JKJHHH32323232**1111215093101788099999";
            NSArray *resultArray = @[@"17321359907",@"15093101788"];
            [[[JKVerifyTool getStringsWith:regularExpression InString:string] should] equal:resultArray];
            
            
        });
    });

});

SPEC_END
