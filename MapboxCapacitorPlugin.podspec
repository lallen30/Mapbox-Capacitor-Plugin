require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'MapboxCapacitorPlugin'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target  = '13.0'
  s.dependency 'Capacitor'
  s.swift_version = '5.1'
  s.dependency 'MapboxCoreNavigation', '~> 2.12'
  s.dependency 'MapboxNavigation', '~> 2.12'
  s.dependency 'MapboxDirections', '~> 2.10.0'
  
  s.pod_target_xcconfig = {
    'MAPBOX_ACCESS_TOKEN' => 'pk.eyJ1IjoiZ290c3BvdHBhcmtpbmciLCJhIjoiY2xlMndxODU3MDM3ZzNwc2s2cHNjMHZlcCJ9.nbp4Vz3Nq6qFMyul-Cjxzg'
  }
end
