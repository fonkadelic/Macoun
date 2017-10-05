platform :ios, '11.0'

target 'WoidKonf' do
  use_frameworks!

  pod 'SwiftGen', '~> 5.1' 
  pod 'Reusable', '~> 4.0'

  target 'WoidKonfTests' do
    inherit! :search_paths
    pod 'FBSnapshotTestCase', :git => 'https://github.com/facebook/ios-snapshot-test-case'
  end
end
