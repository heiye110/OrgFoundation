
Pod::Spec.new do |s|

  s.name             = 'OrgFoundation'
  s.version          = '0.1.0'
  s.summary          = 'OrgFoundation Module.'

  s.description      = <<-DESC
                        TODO: Add long description of the pod here.OrgFoundation Module description
                       DESC

  s.homepage         = 'https://github.com/heiye110/OrgFoundation'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'heiye110' => 'lmc' }
  s.source           = { :git => 'https://github.com/heiye110/OrgFoundation.git', :tag => s.version.to_s }
  s.platform         = :ios, '7.0'

  s.source_files = 'OrgFoundation/Classes/**/*'
  
  # s.resource_bundles = {
  #   'OrgFoundation' => ['OrgFoundation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  # s.dependency 'AFNetworking', '~> 2.3'
  
end
