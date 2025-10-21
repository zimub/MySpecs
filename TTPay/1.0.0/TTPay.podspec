#
# Be sure to run `pod lib lint TTPay.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TTPay'
  s.version          = '1.0.0'
  s.summary          = '天天支付库.'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  天天支付库支持内购和web支付.
  DESC
  
  s.homepage         = 'https://gitlab.playnexx.net/PluginsRepo/ttpay'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tiantian' => 'panguowen@playdayy.com' }
  s.source           = { :git => 'https://gitlab.playnexx.net/PluginsRepo/ttpay.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '13.0'
  
  s.source_files = 'TTPay/Classes/**/*'
  
  s.libraries = 'c++','bz2','c++abi','resolv.9','sqlite3.0','sqlite3','xml2.2','xml2'
  
  # TODO: 没有找到资源路径
#  s.resource_bundles = {
#    'TTPay' => ['TTPay//Assets/*.{xib,png,xcassets,nib,bundle,csv,lproj}']
#  }
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation', 'StoreKit'
  s.swift_versions = ['5.0']
  s.static_framework = true
  s.static_framework = true
  # 关键配置：排除模拟器的 arm64 架构 ps: TTOpenPass.framework 只包含了arm64-apple-ios (真机架构)
  s.pod_target_xcconfig = {
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 armv7',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64 arm64',
    'ONLY_ACTIVE_ARCH' => 'YES'
  }
  s.dependency 'TTCoreLib', '1.0.0'
  s.dependency 'MBProgressHUD', '1.2.0'


  
  # s.resource_bundles = {
  #   'TTPay' => ['TTPay/Assets/*.png']
  # }
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
