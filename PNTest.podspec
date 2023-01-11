#
# Be sure to run `pod lib lint PNTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PNTest'
  s.version          = '0.3.0'
  s.summary          = 'A short description of PNTest.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xixi/PNTest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xixi' => 'xixi_wen@foxmial.com' }
  s.source           = { :git => 'https://github.com/emodeqidao/PNTest.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.vendored_frameworks = ['PNTest/*.framework']
  #s.source_files = "PNTest/PNTool.framework/Headers/*.{h,m}"

  #s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }


#  s.public_header_files = 'PNTest/*.framework/Headers/*.{h}'
  s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}

  s.static_framework = true

  #s.public_header_files = 'Pod/Classes/*.h'
  #s.frameworks = 'UIKit', 'MapKit',
  s.frameworks = ['UIKit','Foundation']
  s.dependency 'AFNetworking', '~>4.0'
  s.dependency 'SVProgressHUD'
  s.dependency 'Masonry'
  
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => '$(EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_$(EFFECTIVE_PLATFORM_SUFFIX)__NATIVE_ARCH_64_BIT_$(NATIVE_ARCH_64_BIT)__XCODE_$(XCODE_VERSION_MAJOR))',
    'EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_simulator__NATIVE_ARCH_64_BIT_x86_64__XCODE_1200' => 'arm64 arm64e armv7 armv7s armv6 armv8'
  }
  
end
