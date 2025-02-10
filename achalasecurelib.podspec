Pod::Spec.new do |s|
  s.name             = 'achalasecurelib'
  s.version          = '1.0.0'
  s.summary          = 'A library for secure face detection and ML model inference using Google ML Kit and TensorFlow Lite.'
  s.description      = 'AchalaSecureLib is an iOS framework that integrates Google ML Kit Face Detection and TensorFlow Lite to run machine learning models on iOS.'
  s.homepage         = 'https://github.com/KimsHOS/achalasecurelib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :git => 'https://github.com/KimsHOS/achalasecurelib.git', :tag => s.version.to_s }

  # Minimum deployment target should be 12.0+
  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.0'

  # Source files
  s.source_files     = 'achalasecurelib/**/*.{h,m,swift}'

  # Static Frameworks & Libraries
  s.static_framework = true  # TensorFlowLiteSwift is a static library; set this to true
  s.requires_arc     = true

  # Dependencies
  s.dependency 'GoogleMLKit/FaceDetection', '7.0.0' 
  s.dependency 'TensorFlowLiteSwift'

  # Frameworks and Libraries
  s.frameworks       = 'Foundation', 'UIKit'
  s.libraries        = 'c++'

  # Vendored frameworks (if you are using custom-built frameworks, specify them)
  s.vendored_frameworks = 'achalasecurelib/Frameworks/*.framework'

  # Exclude unnecessary files from being included in the Pod
  s.exclude_files = "achalasecurelib/Exclude/*"

end
