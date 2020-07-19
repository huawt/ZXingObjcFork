Pod::Spec.new do |s|
  s.name = 'ZXingObjCFork'
  s.version = '3.6.5'
  s.summary = 'An Objective-C Port of the ZXing barcode framework.'
  s.homepage = 'https://github.com/huawt/ZXingObjcFork'
  s.author = 'zxingify'
  s.license = { :type => 'Apache License 2.0', :file => 'COPYING' }
  s.source = { :git => 'https://github.com/huawt/ZXingObjcFork.git', :tag => "#{s.version}" }
  s.requires_arc = true
  s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.8'

  s.ios.frameworks = 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreVideo', 'ImageIO', 'QuartzCore'
  s.osx.frameworks = 'AVFoundation', 'CoreMedia', 'QuartzCore'

  s.source_files = 'ZXingObjC/**/*.{h,m}'
end
