#
# Be sure to run `pod lib lint TTAdLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TTAdLib'
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
  s.source           = { :git => 'https://gitlab.playnexx.net/PluginsRepo/ttadlib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '13.0'
 
  s.static_framework = true

  s.source_files = 'TTAdLib/Classes/**/*'
  
  s.frameworks = 'UIKit','Foundation','AdSupport'
  s.libraries = 'c++','bz2','c++abi','resolv.9','sqlite3.0','sqlite3','xml2.2','xml2'
  # TODO: 没有找到资源路径
#  s.resource_bundles = {
#    'TTAdLib' => ['TTAdLib/Assets/*.{xib,png,xcassets,nib,bundle,csv,lproj}']
#  }
  s.dependency  'TTCoreLib', '1.0.0'
  s.dependency  'AppLovinSDK', '13.0.0'
  s.dependency  'AppLovinMediationByteDanceAdapter','6.2.0.9.0'
  s.dependency  'Ads-Global', '6.2.0.9'
  s.dependency  'AppLovinMediationFacebookAdapter', '6.15.2.1'
  s.dependency  'FBAudienceNetwork', '6.15.2'
  s.dependency  'AppLovinMediationGoogleAdapter', '11.10.0.0'
  s.dependency  'Google-Mobile-Ads-SDK', '11.10.0'
  s.dependency  'GoogleUserMessagingPlatform', '2.6.0'
  s.dependency  'AppLovinMediationGoogleAdManagerAdapter', '11.10.0.0'
  s.dependency  'AppLovinMediationMintegralAdapter', '7.7.3.0.0'
  s.dependency  'MintegralAdSDK', '7.7.3'
  s.dependency  'AppLovinMediationFyberAdapter', '8.3.2.1'
  s.dependency  'Fyber_Marketplace_SDK', '8.3.2'
  s.dependency  'AppLovinDSPLinkedInAdapter', '1.2.2.0'
  s.dependency  'AppLovinMediationUnityAdsAdapter', '4.12.3.0'
  s.dependency  'UnityAds', '4.12.3'
  s.dependency  'TPNiOS', '6.3.68'
  s.dependency  'TPNFacebookSDKAdapter', '6.3.68'
  s.dependency  'TPNAdmobSDKAdapter', '6.3.68.4'
  s.dependency  'TPNApplovinSDKAdapter', '6.3.68'
  s.dependency  'TPNMintegralSDKAdapter', '6.3.68'
  s.dependency  'TPNFyberSDKAdapter', '6.3.68.1'
#  s.dependency  'ChartboostSDK', '9.10.0'
#  s.dependency  'PrebidMobile', '3.1.0'
#  s.dependency  'OpenWrapSDK', '4.10.0'
#  s.dependency  'HyBid', '3.7.0'
#  s.dependency  'AmazonPublisherServicesSDK', '5.3.1'
#  s.dependency  'BidMachine', '3.4.0'
#  s.dependency  'AppLovinMediationInMobiAdapter', '10.8.8.0'
#  s.dependency  'IronSourceSDK', '9.0.0'

# 添加这行来排除冲突的框架
s.exclude_files = [
  '**/PAGAdSDK.framework',
  '**/pagadsdk.framework',
  '**/BUAdSDK.framework',
  '**/BUAdSDK_Compatible/**',
  '**/BUAdSDK/**',
  '**/Ads-Global/**',
  '**/XCFrameworkIntermediates/**'
]
end

