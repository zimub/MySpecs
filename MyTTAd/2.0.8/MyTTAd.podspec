# MyTTAd.podspec
Pod::Spec.new do |s|
  s.name             = 'MyTTAd'
  s.version          = '2.0.8'
  s.summary          = 'MyTTAd 是一个用于 iOS 应用的广告 SDK'
  
  s.description      = <<-DESC
  MyTTAd 是一个功能完整的 iOS 广告 SDK，支持多种广告形式。
  DESC
  
  s.homepage         = 'https://github.com/zimub/MyTTAd'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zimub' => 'panguowen@playdayy.com' }
  
  # 关键修改：指向你的 Nexus 仓库
  s.source           = {
    :http => 'http://nexus.playnexx.net/repository/ios_libs/PluginsLibIOS/1.0.0/PluginsLibIOS.zip',
    :type => 'zip'
  }
  
  s.ios.deployment_target = '13.0'
  #  s.swift_versions = ['5.0', '6.0']
  
  # 架构配置
#  s.user_target_xcconfig = {
#    'IPHONEOS_DEPLOYMENT_TARGET' => '13.0',
#    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
#  }
#  s.pod_target_xcconfig = {
#    'IPHONEOS_DEPLOYMENT_TARGET' => '13.0',
#    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
#  }
  
  # 使用 xcframework
  #  s.vendored_frameworks = '**/*.framework'  # 自动包含所有 framework
#  s.vendored_frameworks = [
#  #    'MyTTAd/Release-iphoneos/Alamofire.framework',
#  # 明确列出所有需要的框架...
#  '**/*.framework'
#  ]

s.vendored_frameworks = [
# 明确列出所有需要的框架...
'*/*.framework'
]

s.libraries = 'c++','bz2','c++abi','resolv.9','sqlite3.0','sqlite3','xml2.2','xml2'

#  s.static_framework = true
  
  # 系统依赖
  s.frameworks = 'UIKit','Foundation','AdSupport','CoreMotion','AppTrackingTransparency'
  s.libraries = 'c++','bz2','c++abi','resolv.9','sqlite3.0','sqlite3','xml2.2','xml2'
  s.dependency 'SnapKit' , '5.6.0'
end
