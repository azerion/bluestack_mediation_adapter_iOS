Pod::Spec.new do |s|

s.name = 'BlueStackAppLovinAdapter'
s.version = '5.1.4.0'
s.static_framework = true
s.license = 'MIT'
s.summary = 'BlueStack adapter used for mediation with the AppLovin MAX SDK'
s.platform = :ios, '13.0'
s.homepage = "https://developers.bluestack.app/"
s.authors = { 'Azerion' => 'https://www.azerion.com/contact/' }
s.swift_version = '5'
s.source = { :git => 'https://github.com/azerion/bluestack_mediation_adapter_iOS.git', :tag => "#{s.version}" }
s.documentation_url = 'https://developers.bluestack.app/ios/mediation/secondary/applovin'
s.vendored_frameworks = "BlueStackAppLovinAdapter.xcframework"
s.ios.deployment_target = '13.0'

s.dependency 'BlueStack-SDK', '>=5.1.1'
s.dependency 'AppLovinSDK', '12.6.1'

end
