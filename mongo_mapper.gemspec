# encoding: UTF-8
require File.expand_path('../lib/mongo_mapper/version', __FILE__)

Gem::Specification.new do |s|
  s.name               = 'schl-mongo_mapper'
  s.homepage           = 'http://github.com/jnunemaker/mongomapper'
  s.summary            = 'A Ruby Object Mapper for Mongo'
  s.require_path       = 'lib'
  s.authors            = ['John Nunemaker']
  s.email              = ['nunemaker@gmail.com']
  s.executables        = ['mmconsole']
  s.version            = MongoMapper::Version
  s.platform           = Gem::Platform::RUBY
  s.files              = Dir.glob("{bin,examples,lib,rails,test}/**/*") + %w[LICENSE UPGRADES README.rdoc]

  s.add_dependency 'activemodel',   '~> 3.0'
  s.add_dependency 'activesupport', '~> 3.0'
  s.add_dependency 'plucky',        '~> 0.5.1'
end
