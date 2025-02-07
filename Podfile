# Set the minimum deployment target to 12.0 (required for GoogleMLKit)
platform :ios, '12.0'

target 'achalasecurelib' do
  use_frameworks!

  # Dependencies
  pod 'GoogleMLKit/FaceDetection', '7.0.0'
  pod 'TensorFlowLiteSwift', '2.17.0'

  target 'achalasecurelibTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

# Fix architecture issues for Apple Silicon and iOS Simulator builds
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      # Ensure arm64 and x86_64 are included
      config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = ''
    end
  end
end
