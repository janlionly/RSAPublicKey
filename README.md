# RSAPublicKey
Using RSA publickey's modulus and exponent to create SecKeyRef and do encrytion and decrytion.

This takes me several days digging in stackoverflow and other websites and finally it works on iOS9.

Method:

1. Use BasicEncodingRules to create a RSA public key object, which can be used for SecKeyEncrypt function to do encrypt.
2. A workaround fix for BasicEncodingRules against iOS9 can be found in RSAPubKey.m, line 53.
3. RSA decryption is using kSecPaddingNone mode, and handle the padding myself simply after SecKeyDecrypt. This is tested against Java PKCS1 Padding, not tested for C# or other languages.

## Installation

### CocoaPods

```ruby
pod 'RSAPublicKey'
```

### Swift Package Manager

- iOS: Open Xcode, File->Swift Packages, search input **https://github.com/janlionly/RSAPublicKey**, and then select Version Up to Next Major **1.0.0** < .
- Or add dependencies in your `Package.swift`:

```swift
.package(url: "https://github.com/janlionly/RSAPublicKey.git", .upToNextMajor(from: "1.0.0")),
```

## Usage

```swift
let modulus = "a9f356b3148ed8deb6735f705f3e2eb88cd38098fe222c394642aa7d9969fafae3a380f095673d29b5263c49c11cf8402a255bf4ed7f742c6c91377de389c9b30f1ec2c5314461588963116668812e6109399440de5cf1643c22d14fca18ac37583fb6d355689c38bf5373d7104a8ccd42dbe06d2c2088df743fdee3783eaf28"

let encryptedData = RSAPubKey.encryptRSA(withModulusHexString: modulus, forPlainData: privateKey.data(using: .utf8))
print(encryptedData)

let decryptedData = RSAPubKey.decryptRSA(withModulusHexString: modulus, forEncryptedData: encryptedData)
print(decryptedData)
```




