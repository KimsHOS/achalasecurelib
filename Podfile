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
