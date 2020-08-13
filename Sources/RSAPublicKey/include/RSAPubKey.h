//
//  RSAPubKey.h
//
//  Version 1.0.0
//
//  Created by yangtu222 on 2016.06.30.
//  Copyright (C) 2016, andlisoft.com.
//
//  Distributed under the permissive zlib License
//  Get the latest version from here:
//
//  https://github.com/yangtu222/RSAPublicKey
//
//  This software is provided 'as-is', without any express or implied
//  warranty.  In no event will the authors be held liable for any damages
//  arising from the use of this software.
//
//  Permission is granted to anyone to use this software for any purpose,
//  including commercial applications, and to alter it and redistribute it
//  freely, subject to the following restrictions:
//
//  1. The origin of this software must not be misrepresented; you must not
//  claim that you wrote the original software. If you use this software
//  in a product, an acknowledgment in the product documentation would be
//  appreciated but is not required.
//
//  2. Altered source versions must be plainly marked as such, and must not be
//  misrepresented as being the original software.
//
//  3. This notice may not be removed or altered from any source distribution.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>

@interface RSAPubKey : NSObject

+ (SecKeyRef)RSAPubKeyWithModulusHexString:(NSString*)modulus;
+ (SecKeyRef) stringToRSAPubKey: (NSString*) modulus andExponent:(NSString*) exponent; //m and e is base64 encoded.
+ (SecKeyRef) dataRSAPubKey: (NSData*) modulus andExponent:(NSData*) exponent;

+ (NSData *)encryptRSAWithPublicKey:(SecKeyRef)publicKey forPlainData:(NSData *)data;
+ (NSData *)decryptRSAWithPublicKey:(SecKeyRef)publicKey forEncryptedData:(NSData *)data;

+ (NSData *)encryptRSAWithModulusHexString:(NSString *)modulus forPlainData:(NSData *)data;
+ (NSData *)decryptRSAWithModulusHexString:(NSString *)modulus forEncryptedData:(NSData *)data;

@end
