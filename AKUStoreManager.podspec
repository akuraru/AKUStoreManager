#
# Be sure to run `pod lib lint AKUStoreManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AKUStoreManager'
  s.version          = '0.1.0'
  s.summary          = 'AKUStoreManager is Testable file manager.'
  s.description      = <<-DESC
    AKUStoreManager is Testable file manager.
    DirectoryManager is assign to test directory during testing.
                       DESC
  s.homepage         = 'https://github.com/akuraru/AKUStoreManager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'akuraru' => 'akuraru@gmail.com' }
  s.source           = { :git => 'https://github.com/akuraru/AKUStoreManager.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/akuraru'

  s.ios.deployment_target = '12.0'
  s.default_subspec = 'Core'
  s.swift_version = '5.2'

  s.subspec 'Core' do |a|
    a.source_files = 'AKUStoreManager/Classes/DirectoryManager.swift'
  end
  
  s.subspec 'Tester' do |a|
    a.source_files = 'AKUStoreManager/Classes/DirectoryManagerTester.swift'
    a.dependency 'AKUStoreManager/Core'
  end
end
