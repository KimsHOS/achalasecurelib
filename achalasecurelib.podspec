Pod::Spec.new do |s|
  s.name             = 'achalasecurelib'
  s.version          = '1.0.0'
  s.summary          = 'A library for secure face detection and ML model inference using Google ML Kit and TensorFlow Lite.'
  s.description      = 'AchalaSecureLib is an iOS framework that integrates Google ML Kit Face Detection and TensorFlow Lite to run machine learning models on iOS.'
  s.homepage         = 'https://github.com/KimsHOS/achalasecurelib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' } # Ensure LICENSE file exists in the repo
  s.author           = { 'Your Name' => 'your.email@example.com' } # Update with correct details
  s.source           = { :git => 'https://github.com/KimsHOS/achalasecurelib.git', :tag => s.version.to_s }
  
  # Deployment target and Swift version
  s.ios.deployment_target = '15.6' # Ensure this matches your project's minimum deployment target
  s.swift_version    = '5.0' # Specify Swift version to avoid warnings
  
  # Source files
  s.source_files     = 'achalasecurelib/**/*.{h,m,swift}'
  s.requires_arc     = true
  
  # Dependencies
  s.dependency 'GoogleMLKit/FaceDetection', '7.0.0' # Ensure this version supports dynamic frameworks
  s.dependency 'TensorFlowLiteSwift', '~> 2.12.0' # Specify a compatible version
  
  # Frameworks and Libraries
  s.frameworks       = 'Foundation', 'UIKit'
  s.libraries        = 'c++'
  
  # Enable module definition and exclude simulator architectures
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES', # Enables modular headers
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64' # Exclude unsupported simulator architectures
  }
  
  # Force dynamic linking for dependencies
  s.static_framework = false # Ensures this pod is treated as a dynamic framework
end
