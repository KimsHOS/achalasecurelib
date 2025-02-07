Pod::Spec.new do |s|
  # Framework Metadata
  s.name             = 'achalasecurelib'
  s.version          = '1.0.0'
  s.summary          = 'A library for secure face detection and ML model inference using Google ML Kit and TensorFlow Lite.'
  s.description      = <<-DESC
                       AchalaSecureLib is an iOS framework that integrates Google ML Kit Face Detection and TensorFlow Lite 
                       to run machine learning models on iOS. It provides tools for secure face detection and inference, 
                       making it ideal for applications requiring advanced security features.
                       NOTE: This framework works only on real iOS devices and does not support iOS simulators.
                       DESC
  s.homepage         = 'https://github.com/KimsHOS/achalasecurelib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }

  # Source Code and Versioning
  s.source           = { :git => 'https://github.com/KimsHOS/achalasecurelib.git', :tag => s.version.to_s }

  # Deployment Target and Swift Version
  s.swift_version    = '5.0'
  s.ios.deployment_target = '12.0'  # Adjusted for compatibility

  # Source Files
  s.source_files     = 'achalasecurelib/**/*.{h,m,swift}'  # Updated path
  s.requires_arc     = true

  # Dependencies
  s.dependency 'GoogleMLKit/FaceDetection'
  s.dependency 'TensorFlowLiteSwift'

  # Required Frameworks and Libraries
  s.frameworks       = 'Foundation', 'UIKit'
  s.libraries        = 'c++'

  # Remove static framework unless necessary
  # s.static_framework = true  
end
