#
#  Be sure to run `pod spec lint RealTimeDLNA.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name             = 'RealTimeDLNA'
  s.version          = '1.0.0'
  s.summary          = 'DLNA实时投屏'


  s.description      = <<-DESC
 A tool for DLNA realtime screen mirroring. Used DLNA, rtsp.
                       DESC

  s.homepage         = 'https://github.com/Coloring/RealTimeDLNA'
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Coloring' => '751590012@qq.com' }
  s.source           = { :git => 'https://github.com/Coloring/RealTimeDLNA.git', :tag => s.version.to_s }
  s.social_media_url = 'http://cocomccree.cn/'

  s.ios.deployment_target = '12.0'

  s.source_files = 'Classes/***/**/*'
  
  # s.resource_bundles = {
  #   'MRDLNA' => ['MRDLNA/Assets/*.png']
  # }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  
  s.libraries = 'icucore', 'c++', 'z', 'xml2'
  
  s.dependency 'CocoaAsyncSocket'
  
  s.xcconfig = {'ENABLE_BITCODE' => 'NO',
      'HEADER_SEARCH_PATHS' => '${SDKROOT}/usr/include/libxml2',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
  
  s.subspec 'MRC' do |sp|
      sp.source_files = 'Classes/MRC/**/*'
      sp.requires_arc = false
  end
end



