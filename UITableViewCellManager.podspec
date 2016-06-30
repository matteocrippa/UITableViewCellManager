#
# Be sure to run `pod lib lint UITableViewCellManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UITableViewCellManager'
  s.version          = '0.1.0'
  s.summary          = 'UITableViewCellManager is a collection of usefull functions for manage your UITableViewCells in your projects.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
UITableViewCellManager is a collection of usefull functions for manage your UITableViewCells in your projects. It helps you to reuse them in different projects in a quick and simple way.
                       DESC

  s.homepage         = 'https://github.com/CorlaOnline/UITableViewCellManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alex Corlatti' => 'alex.corlatti@gmail.com' }
  s.source           = { :git => 'https://github.com/CorlaOnline/UITableViewCellManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/corlaonline'

  s.ios.deployment_target = '8.0'

  s.source_files = 'UITableViewCellManager/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UITableViewCellManager' => ['UITableViewCellManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
