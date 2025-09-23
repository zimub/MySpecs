#
# Be sure to run `pod lib lint MyTTAd.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyTTAd'
  s.version          = '1.0.1'
  s.summary          = '介绍要整改详细，不要英文简单的说明关于网络和广告的一些集合'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  MyTTAd is a Swift library that provides a set of APIs to simplify ad integration and network requests for iOS apps, leveraging Alamofire and SnapKit.
                       DESC

  s.homepage         = 'https://github.com/zimub/MyTTAd'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zimub' => '1096562298@qq.com' }
  s.source           = { :git => 'https://github.com/zimub/MyTTAd.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = "MyTTAd/Classes/**/*.{h,m,swift}"
  # swift支持多个版本
  s.swift_versions = ['4.2', '5.0']
  s.dependency 'Alamofire'
  s.dependency 'SnapKit'
  
  # s.resource_bundles = {
  #   'MyTTAd' => ['MyTTAd/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
