#
# Be sure to run `pod lib lint TTPayment.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PluginsLibIOS'
  s.version          = '4.0.0'
  s.summary          = 'iOS所有SDK支持库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.playnexx.net/plugins/PluginsLibIOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tiantain' => 'panguowen@playdayy.com' }
  s.source           = {
    :http => 'http://nexus.playnexx.net/repository/ios_libs/PluginsLibIOS/1.0.0/PluginsLibIOS.zip',
    :type => 'zip'
  }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.vendored_frameworks = [
   # 明确列出所有需要的框架...
   '*/*.framework'
  ]
  s.libraries = 'c++','bz2','c++abi','resolv.9','sqlite3.0','sqlite3','xml2.2','xml2'
  
  # s.resource_bundles = {
  #   'Payment' => ['Payment/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation', 'StoreKit'
end
