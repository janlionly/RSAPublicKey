//
//  ViewController.m
//  RSAPublicKey
//
//  Created by yangtu222 on 16/6/29.
//  Copyright © 2016年 yangtu222. All rights reserved.
//

#import "ViewController.h"
#import "RSAPubKey.h"
#import "NSData+RSA.h"
#import "NSData+Base64.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SecKeyRef pubKey = [RSAPubKey stringToRSAPubKey:@"0E8fPw5rw/t1xobyTbXtZgLNYuBlX3RQy4re0SZerVGNW/LkN92Ycw+aLT0/9bxy/WuY63JOJFmZFVsIAnKhdfZLCoFQPq5nNJ1rUNfJ4J7FWvJoaM69IM/VA3GTdIRGQHgQJIXlXbiGOk+lJfo51Ncb67w2miqucsoS/YcgL0=" andExponent:@"AQAB"];
    
    if( pubKey == nil )
        return;
    
    char testChar = 'A';
    
    NSData* testData = [[NSData alloc] initWithBytes:&testChar length:1];
    NSData* testEncoded = [testData encryptWithRSA:pubKey];
    
    NSLog(@"%@\n", testEncoded);
    
    CFRelease(pubKey);
    
    SecKeyRef publicKey = [RSAPubKey RSAPubKeyWithModulusHexString:@"a9f356b3148ed8deb6735f705f3e2eb88cd38098fe222c394642aa7d9969fafae3a380f095673d29b5263c49c11cf8402a255bf4ed7f742c6c91377de389c9b30f1ec2c5314461588963116668819e6109399440de5cf1643c22d14fca18ac37583fb6d355689c38bf5373d7104a8ccd42dbe06d2c2088df743fdee3783eaf28"];
    NSData *plainData = [@"CB9D46E0C36E4733" dataUsingEncoding:NSUTF8StringEncoding];
    NSData *encodedData = [plainData encryptWithRSA:publicKey];
    NSLog(@"encode data: %@", [[encodedData hexadecimalString] uppercaseString]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
