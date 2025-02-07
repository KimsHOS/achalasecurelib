Pod::Spec.new do |s|
  s.name             = 'achalasecurelib'
  s.version          = '1.0.0'
  s.summary          = 'A library for secure face detection and ML model inference using Google ML Kit and TensorFlow Lite.'
  s.description      = 'AchalaSecureLib is an iOS framework that integrates Google ML Kit Face Detection and TensorFlow Lite to run machine learning models on iOS.'
  s.homepage         = 'https://github.com/KimsHOS/achalasecurelib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' } # Add LICENSE file to your repo
  s.author           = { 'Your Name' => 'your.email@example.com' } # Update with your details
  s.source           = { :git => 'https://github.com/KimsHOS/achalasecurelib.git', :tag => s.version.to_s }
  s.ios.deployment_target = '15.6' # Correct deployment target syntax
  s.swift_version    = '5.0' # Specify Swift version to avoid default warning
  s.source_files     = 'achalasecurelib/**/*.{h,m,swift}'
  s.requires_arc     = true
  s.dependency 'GoogleMLKit/FaceDetection', '7.0.0'
  s.dependency 'TensorFlowLiteSwift'
  s.frameworks       = 'Foundation', 'UIKit'
  s.libraries        = 'c++'
  s.static_framework = true
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }


  # Exclude simulator architectures (arm64 for M1 simulators and x86_64)
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64',
    'VALID_ARCHS' => 'arm64' # Deprecated but included for clarity
  }
end