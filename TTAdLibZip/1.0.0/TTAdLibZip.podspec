#
# Be sure to run `pod lib lint TTAdLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TTAdLibZip'
  s.version          = '1.0.0'
  s.summary          = '天天广告库'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  用于天天关于广告的管理库.
  DESC
  
  s.homepage         = 'https://gitlab.playnexx.net/PluginsRepo/TTAdLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tiantian' => 'panguowen@playdayy.com' }
  s.source           = {
    :http => 'http://nexus.playnexx.net/repository/ios_libs/TTAdLib/1.0.0/TTAdLib.zip',
    :type => 'zip'
  }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '13.0'
  s.vendored_frameworks = [
  # 明确列出所有需要的框架...
    '**/*.framework'
  ]
    s.exclude_files = [
    '**/PAGAdSDK.framework',
    '**/pagadsdk.framework',
    '**/BUAdSDK.framework',
    '**/BUAdSDK_Compatible/**',
    '**/BUAdSDK/**',
    '**/Ads-Global/**',
    '**/XCFrameworkIntermediates/**'
  ]
  s.frameworks = 'UIKit','Foundation','AdSupport'
  s.libraries = 'c++','bz2','c++abi','resolv.9','sqlite3.0','sqlite3','xml2.2','xml2'
#  s.resource_bundles = {
#    'TTAdLib' => ['TTAdLib/Assets/*.{xib,png,xcassets,nib,bundle,csv,lproj}']
#  }
  s.swift_versions = ['5.0']


end

