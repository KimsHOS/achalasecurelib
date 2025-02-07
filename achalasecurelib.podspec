Pod::Spec.new do |s|
  s.name             = 'achalasecurelib'
  s.version          = '1.0.0'
  s.summary          = 'A library for secure face detection and ML model inference using Google ML Kit and TensorFlow Lite.'
  s.description      = 'AchalaSecureLib is an iOS framework that integrates Google ML Kit Face Detection and TensorFlow Lite to run machine learning models on iOS.'
  s.homepage         = 'https://github.com/KimsHOS/achalasecurelib'
  
  # ✅ Ensure the license file is included
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  
  # ✅ Update author details (replace with actual info)
  s.author           = { 'Your Name' => 'your.email@example.com' }
  
  # ✅ Ensure the correct Git source and tag
  s.source           = { :git => 'https://github.com/KimsHOS/achalasecurelib.git', :tag => s.version.to_s }
  
  # ✅ Set the correct iOS deployment target
  s.ios.deployment_target = '15.6'
  
  # ✅ Specify Swift version
  s.swift_version    = '5.0'

  # ✅ Include source files
  s.source_files     = 'achalasecurelib/**/*.{h,m,swift}'
  s.requires_arc     = true

  # ✅ Declare dependencies
  s.dependency 'GoogleMLKit/FaceDetection', '7.0.0'
  s.dependency 'TensorFlowLiteSwift'

  # ✅ Required frameworks and libraries
  s.frameworks       = 'Foundation', 'UIKit'
  s.libraries        = 'c++'

  # ✅ Ensure the framework is statically linked
  s.static_framework = true

  # ✅ Fix architecture issues
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'ONLY_ACTIVE_ARCH' => 'NO',
    'VALID_ARCHS' => 'arm64 armv7',
    'ARCHS' => '$(ARCHS_STANDARD)',
    'DEFINES_MODULE' => 'YES'
  }

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end
