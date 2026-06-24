Pod::Spec.new do |s|
  s.name             = 'StayLiquid'
  s.version          = '0.1.1'
  s.summary          = 'Native Liquid Glass for Ionic & Capacitor Applications'
  s.license          = { :type => 'MIT' }
  s.homepage         = 'https://github.com/alistairheath/stay-liquid'
  s.author           = { 'Hapcha' => 'team@hapcha.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'ios/Plugin/**/*.{swift,m,h}'
  # iOS 12.0 floor: the bar only renders Liquid Glass on iOS 26+ (gated at
  # runtime via `available()`), but the pod must compile down to 12.0 so apps
  # that still support iOS 12 can link it. SF Symbol (iOS 13+) calls are guarded.
  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.9'
  s.dependency       'Capacitor', '>= 6.0.0'
end