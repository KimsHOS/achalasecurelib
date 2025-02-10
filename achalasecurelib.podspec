Pod::Spec.new do |s|
  s.name             = 'achalasecurelib'
  s.version          = '1.0.0'
  s.summary          = 'A library for secure face detection and ML model inference using Google ML Kit and TensorFlow Lite.'
  s.description      = 'AchalaSecureLib is an iOS framework that integrates Google ML Kit Face Detection and TensorFlow Lite to run machine learning models on iOS.'
  s.homepage         = 'https://github.com/KimsHOS/achalasecurelib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :git => 'https://github.com/KimsHOS/achalasecurelib.git', :tag => s.version.to_s }

  # ✅ iOS Deployment Target
  s.ios.deployment_target = '15.6'
  s.swift_version         = '5.0'

  # ✅ Source files
  s.source_files         = 'achalasecurelib/**/*.{h,m,swift}'
  s.requires_arc         = true

  # ✅ Dependencies
  s.dependency 'GoogleMLKit/FaceDetection', '7.0.0'  # <-- Added MLKit Dependency

  # ✅ Frameworks and Libraries
  s.frameworks = 'Foundation', 'UIKit'
  s.libraries  = 'c++'

  # ✅ Using a precompiled .xcframework
  s.vendored_frameworks = 'achalasecurelib_build/products/library/frameworks/achalasecurelib.framework'

  # ✅ Ensure it's dynamically linked
  s.static_framework = false
end
