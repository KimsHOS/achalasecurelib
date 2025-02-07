Pod::Spec.new do |spec|
  spec.name         = 'achalasecurelib'
  spec.version      = '1.0.0'
  spec.summary      = 'A secure iOS library for data protection.'
  spec.description  = 'AchalaSecureLib provides enhanced security features for iOS apps.'
  spec.homepage     = 'https://github.com/KimsHOS/achalasecurelib'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { 'Your Name' => 'your@email.com' }
  spec.source       = { :git => 'https://github.com/KimsHOS/achalasecurelib.git', :tag => spec.version.to_s }

  # ✅ iOS Only
  spec.ios.deployment_target = '13.0'
  spec.swift_versions = ['5.0']

  # ✅ Using a precompiled .framework
  spec.vendored_frameworks = 'achalasecurelib_build/products/library/frameworks/achalasecurelib.framework'

  # ✅ Ensure it's dynamically linked (if needed)
  spec.static_framework = false

  # ✅ Exclude simulator architectures for real iPhone deployment
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'VALID_ARCHS' => 'arm64 armv7'
  }
  spec.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'VALID_ARCHS' => 'arm64 armv7'
  }
end
