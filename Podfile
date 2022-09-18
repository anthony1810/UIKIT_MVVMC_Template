# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

target 'Template' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

#  inhibit_all_warnings!
  pod 'Moya/RxSwift'
  pod 'ObjectMapper'
  pod 'RxCocoa'
  pod 'RxAppState'
  pod 'Kingfisher'
  pod 'Action'
  pod 'XCoordinator/RxSwift'
  pod 'Resolver'

  # auto layout
  pod 'SnapKit'

  # control
  pod 'SwiftEntryKit'
  pod 'DifferenceKit'
  pod 'Cosmos'

  # clean code
  pod 'R.swift'
  
  #animation
  pod 'lottie-ios'
  
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15'
      end
    end
  end
  
#  post_install do |installer|
#      installer.pods_project.targets.each do |target|
#          if target.name == 'Resolver'
#              target.build_configurations.each do |config|
#                  config.build_settings['SWIFT_VERSION'] = '5.1'
#              end
#          end
#      end
#
#      # only use for xcode 14 build on simulator
#      installer.pods_project.build_configurations.each do |config|
#          config.build_settings[‘EXCLUDED_ARCHS[sdk=iphonesimulator*]’] = ‘arm64’
#      end
#  end

end
