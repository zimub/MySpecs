#
# Be sure to run `pod lib lint TTCoreLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
# https://github.com/zimub/TTCoreLib.git

Pod::Spec.new do |s|
  s.name             = 'TTCoreLibZip'
  s.version          = '1.0.0'
  s.summary          = '天天基础库.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  TTCoreLib 是一个用于广告,支付,打点等功能库的基础库
                       DESC

  s.homepage         = 'https://github.com/zimub/TTCoreLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tiantain' => 'panguowen@playdayy.com' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.source           = {
    :http => 'http://nexus.playnexx.net/repository/ios_libs/TTCoreLib/1.0.0/TTCoreLib.zip',
    :type => 'zip'
  }
  s.ios.deployment_target = '13.0'
  s.vendored_frameworks = [
  # 明确列出所有需要的框架...
    '**/*.framework'
  ]
  s.frameworks = 'UIKit','Foundation','AdSupport','CoreMotion','AppTrackingTransparency'
  s.libraries = 'c++','bz2','c++abi','resolv.9','sqlite3.0','sqlite3','xml2.2','xml2'
  
end
