//
//  main.m
//  NSDecimalNumberTutorial
//
//  Created by Denis Frayssignes on 24/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Hello NSDecimalNumber tutorial!");
        
        NSDecimalNumber *minusOne = [[NSDecimalNumber alloc] initWithInt:-1];
        NSLog( @"minusOne as NSDecimalNumber = %@", minusOne);
        NSLog( @"minusOne as double = %f",[minusOne doubleValue]);
        
        // localization allows other thousands separators, also.
        NSNumberFormatter * myNumFormatter = [[NSNumberFormatter alloc] init];
        [myNumFormatter setLocale:[NSLocale currentLocale]];
        [myNumFormatter setFormatterBehavior:NSNumberFormatterBehavior10_4];
        [myNumFormatter setNumberStyle:NSNumberFormatterDecimalStyle]; // crucial
        
        NSString *strWithThousandSep = @"8,765.4";  
        NSNumber *num1 = [myNumFormatter numberFromString:strWithThousandSep];
        NSLog(@"string '%@' gives NSNumber '%@' with intValue '%i'", 
              strWithThousandSep, num1, [num1 intValue]);
        
        NSString *strWithoutThousandSep = @"8765.4";  
        NSNumber *num2 = [myNumFormatter numberFromString:strWithoutThousandSep];
        NSLog(@"string '%@' gives NSNumber '%@' with intValue '%i'", 
              strWithoutThousandSep, num2, [num2 intValue]);
        
        NSString *strWithSpaceThousandSep = @"8 765.4";  
        NSNumber *num3 = [myNumFormatter numberFromString:strWithSpaceThousandSep];
        NSLog(@"string '%@' gives NSNumber '%@' with intValue '%i'", 
              strWithSpaceThousandSep, num3, [num3 intValue]);
    }
    return 0;
}

