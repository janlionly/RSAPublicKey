Pod::Spec.new do |s|
  s.name             = 'RSAPublicKey'
  s.version          = '1.0.0'
  s.summary          = 'Using RSA public key's modulus and exponent to create SecKeyRef and do encryption and decryption.'

  s.homepage         = 'https://github.com/janlionly/RSAPublicKey'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'janlionly' => 'janlionly@gmail.com' }
  s.source           = { :git => 'https://github.com/janlionly/RSAPublicKey.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/janlionly'
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = 'Sources/RSAPublicKey/*'
  s.frameworks = 'Security'
  s.swift_versions = ['4.2', '5.0', '5.1', '5.2']
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }
end
