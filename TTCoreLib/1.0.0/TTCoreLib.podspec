#
# Be sure to run `pod lib lint TTCoreLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
# https://github.com/zimub/TTCoreLib.git

Pod::Spec.new do |s|
  s.name             = 'TTCoreLib'
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

  s.homepage         = 'https://gitlab.playnexx.net/PluginsRepo/ttcorelib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tiantain' => 'panguowen@playdayy.com' }
  s.source           = { :git => 'https://gitlab.playnexx.net/PluginsRepo/ttcorelib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'TTCoreLib/Classes/**/*'
  s.static_framework = true
  s.swift_versions = ['5.0']
#  s.source_files = 'TTCoreLib/Classes/*.{h,m,swift}'

#  s.vendored_frameworks = 'TTBaseLib/Classes/*.framework'

  s.frameworks = 'UIKit','Foundation','AdSupport','CoreMotion','AppTrackingTransparency'
  s.libraries = 'c++','bz2','c++abi','resolv.9','sqlite3.0','sqlite3','xml2.2','xml2'
  
  # 关键配置：排除模拟器的 arm64 架构 ps: TTOpenPass.framework 只包含了arm64-apple-ios (真机架构)
  s.pod_target_xcconfig = {
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 armv7',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64 arm64',
    'ONLY_ACTIVE_ARCH' => 'YES'
  }
  s.dependency 'Alamofire', '~> 5.9.1'
  s.dependency 'MBProgressHUD', '1.2.0'
  s.dependency 'BrotliKit', '1.0.2'
  s.dependency 'AdjustSignature', '3.35.2'
  s.dependency 'Sentry', '1.7.2'
  s.dependency 'FBSDKCoreKit_Basics', '17.0.0'
  s.dependency 'FBSDKCoreKit', '17.0.0'
  s.dependency 'FirebaseAnalytics', '11.3.0'
  s.dependency 'FirebaseABTesting', '11.3.0'
  s.dependency 'FirebaseAnalyticsOnDeviceConversion', '11.3.0'
  s.dependency 'FirebaseCore', '11.3.0'
  s.dependency 'FirebaseCoreExtension', '11.3.0'
  s.dependency 'FirebaseCoreInternal', '11.3.0'
  s.dependency 'FirebaseCrashlytics', '11.3.0'
  s.dependency 'FirebaseInstallations', '11.3.0'
  s.dependency 'FirebaseMessaging','11.3.0'
  s.dependency 'FirebasePerformance', '11.3.0'
  s.dependency 'FirebaseRemoteConfig', '11.3.0'
  s.dependency 'FirebaseRemoteConfigInterop', '11.3.0'
  s.dependency 'FirebaseSessions', '11.3.0'
  s.dependency 'FirebaseSharedSwift', '11.3.0'
  s.dependency 'ThinkingDataCore', '1.0.2'
  s.dependency 'ThinkingSDK', '3.0.2'
  s.dependency 'GoogleUtilities','8.0.2'
  s.dependency 'TTOpenPass', '2.1.2-swift'
  s.dependency 'Adjust'
end
