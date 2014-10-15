Pod::Spec.new do |s|
  s.name     = 'MCNSColorUtils'
  s.version  = '1.0.0'
  s.license  = 'BSD 3-Clause'
  s.summary  = 'NSColor utilities.'
  s.homepage = 'https://github.com/mirego/MCUIColorUtils.git'
  s.authors  = { 'Mirego' => 'info@mirego.com' }
  s.source   = { :git => 'https://github.com/garno/MCNSColorUtils.git', :tag => s.version.to_s }
  s.source_files = 'MCNSColorUtils/*.{h,m}'
  s.requires_arc = true

  s.platform = :osx, '10.9'
end
