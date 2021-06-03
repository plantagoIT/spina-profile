$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'spina/profile/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'spina-profile'
  s.version     = Spina::Profile::VERSION
  s.authors     = ['Aeneas Meier']
  s.email       = ['aeneas@plantago.dev']
  s.homepage    = 'https://plantago.dev'
  s.summary     = 'Spina Profile Extension'
  s.description = 'This extension allows to dynamically create a profile for the Spina CMS with customizable fields for addresses, social media or similar stuff.'
  s.licenses    = ['GPLv3']

  s.files = Dir['{app,config,db,lib,test}/**/*'] + ['Rakefile', 'README.md']

  s.add_dependency 'spina'
end
