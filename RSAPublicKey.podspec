Pod::Spec.new do |s|
  s.name             = 'RSAPublicKey'
  s.version          = '1.0.0'
  s.summary          = 'Using RSA public keys modulus and exponent to create SecKeyRef and do encryption and decryption.'

  s.social_media_url = 'https://twitter.com/janlionly'
  s.homepage         = 'https://github.com/janlionly/RSAPublicKey'
  s.license          = "MIT"
  s.author           = { 'janlionly' => 'janlionly@gmail.com' }
  s.source           = { :git => 'https://github.com/janlionly/RSAPublicKey.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = 'Sources/RSAPublicKey/*.{h,m}'
  s.vendored_frameworks = '*.framework'
  s.frameworks = 'Security'

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }
end
